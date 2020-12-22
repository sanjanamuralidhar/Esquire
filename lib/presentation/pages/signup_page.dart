import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_event.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/presentation/widgets/initial_layout.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:openapi/model/managed_user_vm.dart';

class SignUpPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKeySignUp =
      GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, outcomeState) {
          debugPrint('SignUp Screen -> Listener....');
          if (outcomeState is ErrorAuthState) {
            Util.showSnackBar(
                'Failed',
                'Error: ' +
                    (Config.DEBUG_ENABLED_SNACKBAR ? outcomeState.error : ''));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, outcomeState) {
            if (outcomeState is CheckingAuthState) {
              return Center(child: CircularProgressIndicator());
            }

            if (outcomeState is ShowGuestHomeState) {
              debugPrint('SignUp Screen -> Listener....show guest home state');
              return InitialLayout();
            }
            if (outcomeState is RegisterSuccessAuthState) {
              debugPrint(
                  'SignUp Screen -> Listening....Register Success Auth state');

              return AlertDialog(
                title: LocalizedText(text: Text('Success')),
                content: LocalizedText(
                  text: Text(
                      'Successfully Saved, Please click on verification link sent to your registered email address'),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: LocalizedText(text: Text('Saved')),
                    onPressed: () {
                      _authBloc.add(GuestAuthEvent());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InitialLayout()),
                      );
                    },
                  ),
                ],
              );
            }

            if (outcomeState is ErrorAuthState) {
              debugPrint('SignUp Screen -> Listening....error state');
              AlertDialog(
                title: LocalizedText(text: Text('Error')),
                content: LocalizedText(text: Text('Connection Time Out')),
                actions: <Widget>[
                  FlatButton(
                    child: LocalizedText(text: Text('Sorry')),
                    onPressed: () {
                      _authBloc.add(SuccessfullyLoggedInAuthEvent());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InitialLayout()),
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
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(children: <Widget>[
        FormBuilder(
          // context,
          key: _fbKeySignUp,
          // autovalidate: true,
          readOnly: false,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocalizedText(
                            text: Text(
                              'Hello,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                          ),
                          LocalizedText(
                            text: Text(
                              'Register !',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .2,
                    child: Image.asset('assets/images/esquirelogo.png'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              FormBuilderTextField(
                attribute: 'firstname',
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
              FormBuilderTextField(
                attribute: 'email',
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
              SizedBox(height: 15),
              FormBuilderTextField(
                maxLines: 1,
                obscureText: true,
                attribute: 'password',
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8),
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
              FormBuilderTextField(
                maxLines: 1,
                obscureText: true,
                attribute: 'vpassword',
                decoration: const InputDecoration(
                  labelText: 'Repeat password',
                ),
                onChanged: _onChanged,
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8)
                ],
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        MaterialButton(
          color: Theme.of(context).accentColor,
          child: LocalizedText(
            text: Text(
              'Register',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          onPressed: () {
            print(_fbKeySignUp.currentState.value);
            if (_fbKeySignUp.currentState.saveAndValidate()) {
              if (_fbKeySignUp.currentState.value['password'] ==
                  _fbKeySignUp.currentState.value['vpassword']) {
                var registerUser = ManagedUserVM().toBuilder()
                  ..login = _fbKeySignUp.currentState.value['login'].toString()
                  ..email = _fbKeySignUp.currentState.value['email']
                  ..firstName = _fbKeySignUp.currentState.value['firstname']
                  ..lastName = _fbKeySignUp.currentState.value['lastname']
                  ..password = _fbKeySignUp.currentState.value['password']
                  ..langKey = 'en';
                _authBloc.add(RegisterAuthEvent(registerUser.build()));
                // showDailog(context);
                print(_fbKeySignUp.currentState.value);
              } else {
                print('Error');
                Util.showSnackBar('Password Failed',
                    'Password and Verification Password do not match',
                    duration:
                        Duration(seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
              }
            } else {
              print(_fbKeySignUp.currentState.value);
              Util.showSnackBar('Validation', 'Validation Failed',
                  duration:
                      Duration(seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
              print('validation failed');
            }
          },
        ),
      ]),
    );
  }

  Future<bool> showDailog(context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          title: Column(
            children: [
              Icon(
                Icons.done,
                size: 100,
                color: Colors.green,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Account created Succesfully. ',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'AVS1267D ',
                    style: TextStyle(color: Theme.of(context).primaryColor)),
                TextSpan(
                  text: 'is your unique Esquire ID ',
                )
              ]))
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Get.back();
                },
                child: LocalizedText(
                  text: const Text(
                    "Close",
                    style: TextStyle(color: Colors.red),
                  ),
                )),
          ],
        );
      },
    );
  }
}
