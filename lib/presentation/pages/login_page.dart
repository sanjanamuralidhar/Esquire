import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_event.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/main.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/presentation/pages/reset_password_page.dart';
import 'package:EsquireCustomerApp/presentation/widgets/initial_layout.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/model/login_vm.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKeyLoginPage =
      GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is ErrorAuthState) {
          if (state.error.contains('404'))
            Util.showSnackBar(
                'Failed',
                'Invalid Username or Password ' +
                    (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          else
            Util.showSnackBar('Failed',
                'Error: ' + (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          debugPrint('LoginScreen->Inside AuthBloc Listen $state');

          if (state is CheckingAuthState) {
            return Scaffold(
                appBar: AppBar(
                  title: LocalizedText(text: Text('Login')),
                ),
                body: Center(child: CircularProgressIndicator()));
          }

          if (state is LoggedInAuthState) {
            return InitialLayout();
          }

          if (state is ErrorAuthState) {
            _authBloc.add(LogoutAuthEvent(LoginVM()));
            return InitialLayout();
          }

          return _buildMainWidget(context, _fbKeyLoginPage);
        },
      ),
    );
  }

  Widget _buildMainWidget(
      BuildContext context, GlobalKey<FormBuilderState> _fbKeyLoginPage) {
    // ignore: close_sinks
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: Builder(
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              FormBuilder(
                key: _fbKeyLoginPage,
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
                                    'Welcome Back,',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                LocalizedText(
                                  text: Text(
                                    'Log In !',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .1,
                            child: Image.asset('assets/images/esquirelogo.png'),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Esquire',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColorDark),
                    ),
                    SizedBox(height: 15),
                    FormBuilderTextField(
                      attribute: 'email',
                      decoration: const InputDecoration(
                        labelText: 'Email or Mobile Phone',
                      ),
                      initialValue: '',
                      onChanged: _onChanged,
                      validators: [
                        FormBuilderValidators.required(),
                        //FormBuilderValidators.email(),
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
                      initialValue: '',
                      onChanged: _onChanged,
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(4),
                      ],
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 5,
                          child: FormBuilderSwitch(
                            contentPadding: EdgeInsets.all(0),
                            attribute: 'remember',
                            label: Text('Remember me'),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0)),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                  onTap: () {
                                    Get.to(ResetPasswordPage());
                                  },
                                  child: Text('Forget password ?'))),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              FlatButton(
                color: Theme.of(context).accentColor,
                child: LocalizedText(
                  text: Text(
                    'Log in',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                onPressed: () {
                  print(_fbKeyLoginPage.currentState.value);
                  if (_fbKeyLoginPage.currentState.saveAndValidate()) {
                    var login = LoginVM().toBuilder()
                      ..username = _fbKeyLoginPage.currentState.value['email']
                      ..password =
                          _fbKeyLoginPage.currentState.value['password'];
                    _authBloc.add(LoginAuthEvent(login.build()));
                  } else {
                    print(_fbKeyLoginPage.currentState.value);
                    Util.showSnackBar('Validation', 'Validation Failed',
                        duration: Duration(
                            seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));

                    print('validation failed');
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(
                        Typicons.social_google_plus_circular,
                        size: 50,
                        color: Colors.red,
                      ),
                      onPressed: () async {
                        GoogleSignIn _googleSignIn = GoogleSignIn(
                          scopes: [
                            'email',
                            'https://www.googleapis.com/auth/contacts.readonly',
                          ],
                        );
                        try {
                          await _googleSignIn.signIn().then((value) {
                            print(value.email);
                            _authBloc.add(LoginAuthEvent(LoginVM()));
                          }).catchError((err) =>
                              _authBloc.add(LoginAuthEvent(LoginVM())));
                        } catch (error) {
                          _authBloc.add(LoginAuthEvent(LoginVM()));
                          print(error);
                        }
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Typicons.social_facebook_circular,
                        size: 50,
                        color: Colors.blue,
                      ),
                      onPressed: () async {
                        final facebookLogin = FacebookLogin();
                        await facebookLogin.logIn(['email']).then((value) {
                          print(value.accessToken);
                          _authBloc.add(LoginAuthEvent(LoginVM()));
                        });
                      }),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      icon: Icon(
                        Typicons.social_twitter_circular,
                        size: 50,
                        color: Colors.blue[900],
                      ),
                      onPressed: () async {
                        TwitterLogin twitterLogin = new TwitterLogin(
                          consumerKey: 'kkOvaF1Mowy4JTvCxKTV5O1WF',
                          consumerSecret:
                              'ZECGsI6UUDBEUVGkJe4S5vd0FGqGxC3wMJCgsXgPRfjSwRFnyH',
                        );

                        await twitterLogin.authorize().then((value) {
                          _authBloc.add(LoginAuthEvent(LoginVM()));
                          print(value.toString());
                        });
                      })
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
