import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:EsquireCustomerApp/blocs/initial/intial_bloc.dart';
import 'package:EsquireCustomerApp/blocs/tickets_list/tickets_list_bloc.dart';
import 'package:EsquireCustomerApp/blocs/translation/translation_bloc.dart';
import 'package:EsquireCustomerApp/presentation/pages/service_request_page.dart';
import 'package:EsquireCustomerApp/presentation/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialLayout extends StatelessWidget {
  InitialLayout();
  @override
  Widget build(BuildContext context) {
    final _ticketListBloc = BlocProvider.of<TicketsListBloc>(context);
    // ignore: close_sinks
    final _translation = BlocProvider.of<TranslationBloc>(context);
    init() async {
      final prefs = await SharedPreferences.getInstance();
      print('LANG' + prefs.get('lang'));
      if (prefs.get('lang') == 'mal') {
        _translation.add(MalayalamTranslationEvent());
      } else {
        _translation.add(EnglishTranslationEvent());
      }
    }

    init();

    // ignore: close_sinks
    final _bottomNavigationBloc =
        BlocProvider.of<BottomNavigationBloc>(context);
    // ignore: close_sinks
    final _authBloc = BlocProvider.of<AuthBloc>(context);
    final _initialBloc = BlocProvider.of<IntialBloc>(context);

    _initialBloc.add(GetIntialdataEvent());
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: _authBloc.state is LoggedInAuthState
            ? FlatButton.icon(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  Get.to(ServiceRequestPage());
                },
                icon: Icon(
                  Icons.build,
                  color: Colors.white,
                ),
                label: Text(
                  'Service',
                  style: Theme.of(context).textTheme.button,
                ))
            : null,
        drawer: MainDrawer(),
        body: _bottomNavigationBloc.state.body,
        bottomNavigationBar: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            _bottomNavigationBloc.add(HomeBottomNavigationEvent());
          },
          child: BottomNavigationBar(
            elevation: 5,
            onTap: (tappedItemIndex) {
              if (tappedItemIndex == 0) {
                _bottomNavigationBloc.add(HomeBottomNavigationEvent());
              }
              if (tappedItemIndex == 1) {
                if (_authBloc.state is LoggedInAuthState) {
                  _bottomNavigationBloc.add(TicketsBottomNavigationEvent());
                  _ticketListBloc.add(GetAllTicketEvent(page: 0));
                } else {
                  _bottomNavigationBloc
                      .add(ProductsBottomNavigationEvent(index: 1));
                }
              }
              if (tappedItemIndex == 2) {
                if (_authBloc.state is LoggedInAuthState) {
                  _bottomNavigationBloc
                      .add(ProductsBottomNavigationEvent(index: 2));
                } else {
                  _bottomNavigationBloc
                      .add(MessagesBottomNavigationEvent(index: 2));
                }
              }
              if (tappedItemIndex == 3) {
                if (_authBloc.state is LoggedInAuthState) {
                  _bottomNavigationBloc
                      .add(MessagesBottomNavigationEvent(index: 3));
                }
              }
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: state.index,
            items: _navigationButtons(context),
          ),
        ),
      );
    });
  }

  List<BottomNavigationBarItem> _navigationButtons(context) {
    // ignore: close_sinks
    final _authBloc = BlocProvider.of<AuthBloc>(context);
    List<BottomNavigationBarItem> items = [];
    items.add(
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')));
    if (_authBloc.state is LoggedInAuthState) {
      items.add(BottomNavigationBarItem(
          icon: Icon(Icons.note), title: Text('Tickets')));
    }
    items.add(
        BottomNavigationBarItem(icon: Icon(Icons.tv), title: Text('Products')));
    items.add(BottomNavigationBarItem(
        icon: Icon(Icons.notifications), title: Text('Notification')));
    return items;
  }
}
