import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthWidgetBuilder extends StatelessWidget {
  final Widget loggedInWidget;
  final Widget loggedOutWidget;

  AuthWidgetBuilder({this.loggedInWidget, this.loggedOutWidget});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is LoggedInAuthState) {
          return loggedInWidget;
        } else {
          return loggedOutWidget;
        }
      },
    );
  }
}
