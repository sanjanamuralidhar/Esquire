import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_event.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/presentation/widgets/initial_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:openapi/model/login_vm.dart';

class OTPVerifyPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessFullyVerifiedOTPAuthState) {
            Util.showSnackBar('OTP', 'Phone Number has been verified');
          }

          if (state is ErrorAuthState) {
            Util.showSnackBar('Failed',
                'Error: ' + (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            debugPrint('OTPPage-> Inside AuthBloc Listen $state');

            if (state is SuccessFullyVerifiedOTPAuthState) {
              return InitialLayout();
            }

            if (state is CheckingAuthState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is SuccessFullyGeneratedOTPAuthState) {
              return AlertDialog(
                title: Text('Success'),
                content: Text('OTP Generated'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Success'),
                    onPressed: () {
                      _authBloc.add(SuccessfullyLoggedInAuthEvent());
                      Get.offAll(InitialLayout());
                    },
                  ),
                ],
              );
            }

            if (state is ErrorAuthState) {
              _authBloc.add(LogoutAuthEvent(LoginVM()));
            }

            return _buildMainWidget(context);
          },
        ),
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    // ignore: close_sinks
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            FormBuilder(
              // context,
              key: _fbKey,
              // autovalidate: true,
              readOnly: false,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .2,
                    child: Image.asset('assets/images/esquirelogo.png'),
                  ),
                  Text(
                    'Esquire Customer App',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColorDark),
                  ),
                  SizedBox(height: 15),
                  Row(children: <Widget>[
                    Spacer(),
                    Expanded(
                        child: MaterialButton(
                            color: Theme.of(context).accentColor,
                            child: Text(
                              'Get OTP',
                              style: Theme.of(context).textTheme.button,
                            ),
                            onPressed: () {
                              if (_authBloc.loggedInUser.email == null) {
                                var result = Get.dialog(AlertDialog(
                                  title: Text(
                                      'Sorry, Your Phone cannot be verified'),
                                  content: Text(
                                      'Please add you mobile number in your profile'),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text('Sorry'),
                                      onPressed: () {
                                        _authBloc.add(
                                            SuccessfullyLoggedInAuthEvent());
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  OTPVerifyPage()),
                                        );
                                      },
                                    ),
                                  ],
                                ));
                              }
                              _authBloc.add(OTPAuthEvent());
                            })),
                    Spacer(),
                  ]),
                  SizedBox(height: 15),
                  FormBuilderTextField(
                    maxLines: 1,
                    attribute: 'otp',
                    decoration: const InputDecoration(
                      labelText: 'OTP Verification',
                    ),
                    onChanged: _onChanged,
                    validators: [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(4),
                    ],
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 15),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    color: Theme.of(context).accentColor,
                    child: Text(
                      'Submit',
                      style: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () {
                      if (_fbKey.currentState.saveAndValidate()) {
                        _authBloc.add(OTPVerifyAuthEvent(
                            _fbKey.currentState.value['otp']));
                      } else {
                        Util.showSnackBar('Validation', 'Validation Failed',
                            duration: Duration(
                                seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: MaterialButton(
                    color: Theme.of(context).accentColor,
                    child: Text(
                      'Reset',
                      style: Theme.of(context).textTheme.button,
                    ),
                    onPressed: () {
                      _fbKey.currentState.reset();
                    },
                  ),
                ),
              ],
            ),
          ]),
        );
      },
    );
  }
}
