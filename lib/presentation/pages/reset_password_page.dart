import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_event.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:openapi/model/login_vm.dart';

class ResetPasswordPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _key = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset password'),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return FormBuilder(
            key: _key,
            child: Column(
              children: [
                state is FinishPassswordResetAuthState
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FormBuilderTextField(
                          attribute: 'key',
                          decoration: InputDecoration(labelText: 'Key'),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FormBuilderTextField(
                          attribute: 'email',
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                      ),
                state is FinishPassswordResetAuthState
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FormBuilderTextField(
                          obscureText: true,
                          attribute: 'password',
                          maxLines: 1,
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: state is CheckingAuthState
                              ? null
                              : state is FinishPassswordResetAuthState
                                  ? () {}
                                  : () {
                                      if (_key.currentState.saveAndValidate()) {
                                        _authBloc.add(
                                            RequestResetPasswordAuthEvent(
                                                email: _key.currentState
                                                    .value['email']));
                                        _key.currentState.reset();
                                      }
                                    },
                          child: state is CheckingAuthState
                              ? CircularProgressIndicator()
                              : Text(
                                  'Sumbit',
                                  style: Theme.of(context).textTheme.button,
                                ),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      state is FinishPassswordResetAuthState
                          ? SizedBox(
                              width: 20,
                            )
                          : Container(),
                      state is FinishPassswordResetAuthState
                          ? Expanded(
                              child: FlatButton(
                                  color: Theme.of(context).primaryColor,
                                  onPressed: () {
                                    _authBloc.add(LogoutAuthEvent(LoginVM()));
                                  },
                                  child: Text(
                                    'Reset',
                                    style: Theme.of(context).textTheme.button,
                                  )),
                            )
                          : Container()
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
