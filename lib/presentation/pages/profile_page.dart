import 'dart:convert';

import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_event.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/blocs/image_picker/image_picker_bloc.dart';
import 'package:EsquireCustomerApp/blocs/selection/selection_bloc.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/widgets/address_card.dart';
import 'package:EsquireCustomerApp/presentation/widgets/initial_layout.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

import 'package:openapi/model/user_dto.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKeyProfilePage =
      GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Profile Settings')),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is ErrorAuthState) {
            Util.showSnackBar('Failed',
                'Error: ' + (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }
          if (state is UpdateSuccessAuthState) {
            Util.showSnackBar('Success', 'Profile Successully Updated ');
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, outcomeState) {
            debugPrint('Profile Screen -> Listening....');

            if (outcomeState is CheckingAuthState) {
              return Center(child: CircularProgressIndicator());
            }

            if (outcomeState is ShowGuestHomeState) {
              return InitialLayout();
            }
            if (outcomeState is RegisterSuccessAuthState) {
              debugPrint(
                  'Profile Screen -> Listening....Register Success Auth state');
              return AlertDialog(
                title: LocalizedText(text: Text('Success')),
                content: LocalizedText(
                  text: Text(
                      'Successfully Saved, We have send a verification email, Please click and verify'),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: LocalizedText(text: Text('Saved')),
                    onPressed: () {
                      _authBloc.add(SuccessfullyLoggedInAuthEvent());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                ],
              );
            }

            if (outcomeState is ErrorAuthState) {
              debugPrint('Profile Screen -> Listening....error state');
              return AlertDialog(
                title: LocalizedText(text: Text('Error')),
                content: LocalizedText(
                    text: Text('Picture is too large ${outcomeState.error}')),
                actions: <Widget>[
                  FlatButton(
                    child: LocalizedText(text: Text('Sorry')),
                    onPressed: () {
                      _authBloc.add(SuccessfullyLoggedInAuthEvent());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                ],
              );
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
    final loggedInUser = _authBloc.loggedInUser;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(children: <Widget>[
        FormBuilder(
          key: _fbKeyProfilePage,
          readOnly: false,
          child: Column(
            children: <Widget>[
              BlocProvider<ImagePickerBloc>(
                create: (context) => ImagePickerBloc(),
                child: Builder(builder: (context) {
                  // ignore: close_sinks
                  final _imageBloc = BlocProvider.of<ImagePickerBloc>(context);
                  return BlocBuilder<ImagePickerBloc, ImagePickerState>(
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          _imageBloc.add(
                              ImageSelectedEvent(source: ImageSource.gallery));
                        },
                        child: (CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.white,
                          ),
                        )),
                      );
                    },
                  );
                }),
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'firstname',
                initialValue:
                    loggedInUser != null ? loggedInUser.firstName : 'user',
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'lastname',
                initialValue:
                    loggedInUser != null ? loggedInUser.lastName : 'user',
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'login',
                initialValue: loggedInUser != null ? loggedInUser.login : '',
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Mobile Phone',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.numeric(),
                  FormBuilderValidators.minLength(10),
                  FormBuilderValidators.maxLength(10),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              SizedBox(height: 15),
              FormBuilderTextField(
                attribute: 'email',
                initialValue: loggedInUser != null
                    ? loggedInUser.email
                    : 'user@gmail.com',
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'email',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),

              // TODO wire real address

              // BlocProvider<SelectionBloc>(
              //   create: (context) => SelectionBloc(),
              //   child: Builder(
              //     builder: (context) {
              //       return BlocBuilder<SelectionBloc, SelectionState>(
              //         builder: (context, state) {
              //           return AddressCard(
              //             address: state.data == null
              //                 ? Config.CUSTOMER.addresses[0]
              //                 : state.data,
              //             onList: false,
              //           );
              //         },
              //       );
              //     },
              //   ),
              // ),
              // SizedBox(height: 10),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                color: Theme.of(context).accentColor,
                child: LocalizedText(
                  text: Text(
                    'Submit',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                onPressed: () {
                  print(_fbKeyProfilePage.currentState.value);
                  if (_fbKeyProfilePage.currentState.saveAndValidate()) {
                    var updateUser = UserDTO().toBuilder()
                      ..login = _fbKeyProfilePage.currentState.value['login']
                          .toString()
                      ..email = _fbKeyProfilePage.currentState.value['email']
                      ..firstName =
                          _fbKeyProfilePage.currentState.value['firstname']
                      ..lastName =
                          _fbKeyProfilePage.currentState.value['lastname'];
                    try {
                      if ((_fbKeyProfilePage.currentState.value['imageUrl'] !=
                              null) &&
                          (_fbKeyProfilePage.currentState.value['imageUrl']
                                  [0] !=
                              null)) {
                        debugPrint(_fbKeyProfilePage
                            .currentState.value['imageUrl'][0]
                            .toString());
                        String bytes = base64Encode((_fbKeyProfilePage
                                    .currentState.value['imageUrl'][0])
                                .readAsBytesSync())
                            .toString();
                        updateUser.imageUrl = bytes;
                      }
                    } catch (e) {
                      debugPrint('Profile page -> $e');
                    }

                    _authBloc.add(UpdateUserAuthEvent(updateUser.build()));
                  } else {
                    print(_fbKeyProfilePage.currentState.value);
                    Util.showSnackBar('Validation', 'Validation Failed',
                        duration: Duration(
                            seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
                    print('validation failed');
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
                child: LocalizedText(
                  text: Text(
                    'Reset',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                onPressed: () {
                  _fbKeyProfilePage.currentState.reset();
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
