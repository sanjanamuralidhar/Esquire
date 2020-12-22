import 'dart:convert';

import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_event.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/blocs/translation/translation_bloc.dart';
import 'package:EsquireCustomerApp/presentation/pages/feedback_page.dart';
import 'package:EsquireCustomerApp/presentation/widgets/auth_widget_builder.dart';
import 'package:EsquireCustomerApp/presentation/pages/contact_us_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/login_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/otp_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/profile_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/service_request_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/signup_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/ticket_list_page.dart';
import 'package:EsquireCustomerApp/presentation/widgets/initial_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:openapi/model/login_vm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final _translation = BlocProvider.of<TranslationBloc>(context);
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Drawer(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              final loggedInUser = _authBloc.loggedInUser;
              return ListView(
                children: [
                  AuthWidgetBuilder(
                    loggedInWidget: UserAccountsDrawerHeader(
                      accountEmail: Text(
                          loggedInUser == null || loggedInUser.email == null
                              ? ''
                              : loggedInUser.email),
                      accountName: Text(
                          loggedInUser == null || loggedInUser.login == null
                              ? 'Login'
                              : loggedInUser.login),
                      otherAccountsPictures: [
                        Image.asset("assets/images/esquirelogo.png"),
                      ],
                      currentAccountPicture:
                          loggedInUser != null && loggedInUser.imageUrl != null
                              ? CircleAvatar(
                                  backgroundImage: MemoryImage(
                                      base64Decode(loggedInUser.imageUrl)),
                                )
                              : CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/user.png'),
                                ),
                    ),
                    loggedOutWidget: DrawerHeader(
                        decoration: BoxDecoration(
                            backgroundBlendMode: BlendMode.modulate,
                            color: Theme.of(context).primaryColor,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/esquirelogo.png"),
                                fit: BoxFit.scaleDown)),
                        child: Text("")),
                  ),
                  AuthWidgetBuilder(
                    loggedOutWidget: ListTile(
                      title: Text("Login"),
                      leading: Icon(Icons.lock),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Get.to(LoginPage());
                      },
                    ),
                    loggedInWidget: ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        _authBloc.add(LogoutAuthEvent(LoginVM()));
                        Get.offAll(InitialLayout());
                      },
                    ),
                  ),
                  AuthWidgetBuilder(
                    loggedInWidget: ListTile(
                      title: Text("My Profile"),
                      leading: Icon(Icons.face),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Get.to(ProfilePage());
                      },
                    ),
                    loggedOutWidget: ListTile(
                      title: Text("Sign Up"),
                      leading: Icon(Icons.arrow_right),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Get.to(SignUpPage());
                      },
                    ),
                  ),
                  // AuthWidgetBuilder(
                  //   loggedInWidget: ListTile(
                  //     title: Text("OTP Verification"),
                  //     leading: Icon(Icons.phonelink_lock),
                  //     trailing: Icon(Icons.keyboard_arrow_right),
                  //     onTap: () {
                  //       Get.to(OTPVerifyPage());
                  //     },
                  //   ),
                  //   loggedOutWidget: Container(),
                  // ),
                  AuthWidgetBuilder(
                    loggedInWidget: ListTile(
                        title: Text("Service Request"),
                        leading: Icon(Icons.move_to_inbox),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Get.to(ServiceRequestPage());
                        }),
                    loggedOutWidget: ListTile(
                      title: Text("Book a Technician"),
                      leading: Icon(Icons.calendar_today),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Get.to(LoginPage());
                      },
                    ),
                  ),
                  AuthWidgetBuilder(
                    loggedInWidget: ListTile(
                      title: Text("My Tickets"),
                      leading: Icon(Icons.devices_other),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Get.to(TicketListPage(
                          viaMenu: true,
                        ));
                      },
                    ),
                    loggedOutWidget: Container(),
                  ),
                  ListTile(
                    title: Text("Change language"),
                    leading: Icon(Icons.translate),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () async {
                      final prefs = await SharedPreferences.getInstance();
                      Get.back();
                      showDialog(
                          context: context,
                          child: SizedBox(
                            height: 300,
                            width: 300,
                            child: AlertDialog(
                              content: FormBuilderRadioGroup(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                  attribute: 'lang',
                                  onChanged: (value) async {
                                    prefs.setString('lang', value);
                                    value == 'eng'
                                        ? _translation
                                            .add(EnglishTranslationEvent())
                                        : _translation
                                            .add(MalayalamTranslationEvent());
                                  },
                                  initialValue: prefs.getString('lang'),
                                  options: [
                                    FormBuilderFieldOption(
                                      value: 'eng',
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text('English'),
                                              Text(
                                                'English',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    FormBuilderFieldOption(
                                      value: 'mal',
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text('Malayalam'),
                                              Text(
                                                'മലയാളം',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ));
                    },
                  ),
                  ListTile(
                    title: Text("Feedback"),
                    leading: Icon(Icons.feedback),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Get.to(FeedbackPage());
                    },
                  ),
                  ListTile(
                    title: Text("Contact Us"),
                    leading: Icon(Icons.shop_two),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Get.to(ContactUsPage());
                    },
                  ),
                  AboutListTile(
                    icon: Icon(Icons.info),
                    applicationIcon: FlutterLogo(),
                    applicationName: 'Esquire App',
                    applicationVersion: 'August 2019',
                    applicationLegalese: '2014 Devs@divisoft.com',
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
