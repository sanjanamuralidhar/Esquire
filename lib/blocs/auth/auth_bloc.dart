import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:flutter/foundation.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/customer.dart';
import 'package:openapi/model/key_and_password_vm.dart';
import 'package:openapi/model/login_vm.dart';
import 'package:openapi/model/managed_user_vm.dart';
import 'package:openapi/model/user_dto.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Openapi openApi;

  UserDTO loggedInUser = null;

  String idToken = null;

  String otpReference = null;

  AuthBloc(this.openApi) : super(LoggedOutAuthState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is GuestAuthEvent) return;

    if (event is GoToGuestHomeEvent) yield ShowGuestHomeState();

    if (event is SuccessfullyLoggedInAuthEvent) yield LoggedInAuthState();

    if (event is LoginAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await _loginCheck(event.loginUser);
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }

    if (event is LogoutAuthEvent) {
      try {
        yield CheckingAuthState();
        this.loggedInUser = null;
        Config.TOKEN = null;
        Config.USER = null;
        yield LoggedOutAuthState();
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }

    if (event is RegisterAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await _registerUser(event.registerUser);
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }

    if (event is UpdateUserAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await _updateUser(event.updateUser);
        this.loggedInUser = event.updateUser;
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }

    if (event is OTPAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await _generateOTP();
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }

    if (event is OTPVerifyAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await _verifyOTP(event.otp);
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }

    if (event is RequestResetPasswordAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await requestResetPassword(event.email);
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }
    if (event is FinishResetPasswordAuthEvent) {
      try {
        yield CheckingAuthState();
        yield await resetPassword(event.keyAndPassword);
      } catch (e) {
        yield ErrorAuthState(e.toString());
      }
    }
  }

  Future<AuthState> requestResetPassword(String mail) async {
    try {
      await openApi
          .getAccountResourceApi()
          .requestPasswordResetUsingPOST(mail)
          .then((value) => print(value.data));
      return FinishPassswordResetAuthState();
    } on Exception catch (e) {
      print('requestPasswordResetUsingPOST' + e.toString());
      return ErrorAuthState('Server error');
    }
  }

  Future<AuthState> resetPassword(KeyAndPasswordVM keyAndPassword) async {
    try {
      await openApi
          .getAccountResourceApi()
          .finishPasswordResetUsingPOST(keyAndPassword)
          .then((value) => print(value.data));
      return PassswordResetSuccessAuthState();
    } on Exception catch (e) {
      print('finishPasswordResetUsingPOST' + e.toString());
      return ErrorAuthState('Server error');
    }
  }

  Future<AuthState> _loginCheck(LoginVM loginUser) async {
    debugPrint('AuthBloc -> Check Login for user: $loginUser');
    try {
      try {
        var token = await openApi
            .getUserJwtControllerApi()
            .authorizeUsingPOST(loginUser);
        this.idToken = token.data.idToken;
      } on DioError catch (e) {
        debugPrint('ERRRORRRR' + e.message.toString());
      }

      debugPrint("AuthBloc -> Authorize called" + e.toString());

      var loggedInUserFromServer = await openApi
          .getAccountResourceApi()
          .getAccountUsingGET(
              headers: {'Authorization': 'Bearer ${this.idToken}'});

      this.loggedInUser = loggedInUserFromServer.data;
      if (loggedInUser.authorities.contains('ROLE_USER')) {
        Config.TOKEN = {'Authorization': 'Bearer ${this.idToken}'};
        Config.USER = loggedInUserFromServer.data;
        debugPrint('AuthBloc -> ${this.loggedInUser}');

        try {
          var customer = await openApi
              .getCustomerResourceApi()
              .getCustomerByUserLoginUsingGET(loginUser.username,
                  headers: {'Authorization': 'Bearer ${this.idToken}'});
          Config.CUSTOMER = customer.data;
          print(customer.data);
        } on Exception catch (e) {
          print('getCustomerByUserLoginUsingGET ' + e.toString());
        }
        return LoggedInAuthState();
      } else {
        return ErrorAuthState('Unauthorized');
      }
    } catch (e) {
      debugPrint(
          'AuthBloc -> Inside Exception  e*: ${e}   ***${e is NoSuchMethodError} ');

      if (e is DioError) {
        if (e.response == null) {
          debugPrint('AuthBloc -> Inside Response Null');
          return ErrorAuthState('Check your network connection...');
        }

        if (e.response.statusCode != null && e.response.statusCode == 401) {
          debugPrint('AuthBloc -> Inside Status Code 401');
          // TODO Create app user credentials for looking up background details

          var appUser = LoginVM().toBuilder()
            ..username = Config.APP_USER
            ..password = Config.APP_PASSWORD;
          var token = await openApi
              .getUserJwtControllerApi()
              .authorizeUsingPOST(appUser.build());

          debugPrint("AuthBloc -> Authorize called" + e.toString());

          var userDetails = await openApi.getUserResourceApi().getUserUsingGET(
              loginUser.username,
              headers: {'Authorization': 'Bearer ${token.data.idToken}'});
          debugPrint(
              'AuthBloc -> User Activation ?? ${userDetails.data.activated}');
          if (userDetails.data.activated) {
            return ErrorAuthState('Please check your username/password');
          } else {
            return ErrorAuthState(
                'Please check your activation mail send to your account: ${userDetails.data.email}');
          }
        }
      }

      return ErrorAuthState(e.toString());
    }
  }

  Future<AuthState> _registerUser(ManagedUserVM registerUser) async {
    debugPrint('AuthBloc -> $registerUser');

    try {
      var user = await openApi
          .getAccountResourceApi()
          .registerCustomerUsingPOST(registerUser);
      return RegisterSuccessAuthState();
    } catch (e) {
      return ErrorAuthState(e.toString());
    }
  }

  Future<AuthState> _updateUser(UserDTO updateUser) async {
    debugPrint('AuthBloc -> $updateUser');

    try {
      var user = await openApi.getAccountResourceApi().saveAccountUsingPOST(
          updateUser,
          headers: {'Authorization': 'Bearer ${this.idToken}'});

      return UpdateSuccessAuthState();
    } catch (e) {
      if (e.response.statusCode != null && e.response.statusCode == 400) {
        debugPrint('AuthBloc -> Inside Status Code 400');
        // TODO Create app user credentials for looking up background details
        return ErrorAuthState("Profile Pic is too Large  ${e}");
      }

      return ErrorAuthState(e.toString());
    }
  }

  Future<AuthState> _generateOTP() async {
    try {
      var result = await openApi.getOtpResourceApi().getOtpToRegisterUsingGET(
          loggedInUser.login,
          headers: {'Authorization': 'Bearer ${this.idToken}'});

      this.otpReference = result.data.details;
      debugPrint('AuthBloc -> OTP Details: ${result.data.details}');
      debugPrint('AuthBloc -> OTP Status ${result.data.status}');

      return SuccessFullyGeneratedOTPAuthState();
    } catch (e) {
      return ErrorAuthState(e.toString());
    }
  }

  Future<AuthState> _verifyOTP(String otp) async {
    try {
      var result = await openApi.getOtpResourceApi().verifyOtpUsingGET(
          loggedInUser.login, otp, otpReference,
          headers: {'Authorization': 'Bearer ${this.idToken}'});

      return SuccessFullyVerifiedOTPAuthState();
    } catch (e) {
      return ErrorAuthState(e.toString());
    }
  }
}
