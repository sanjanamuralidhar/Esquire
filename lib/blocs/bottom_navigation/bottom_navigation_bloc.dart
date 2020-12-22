import 'dart:async';

import 'package:EsquireCustomerApp/presentation/pages/home.dart';
import 'package:EsquireCustomerApp/presentation/pages/notifications_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/our_products_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/ticket_list_page.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(HomeBottomNavigationState());

  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    if (event is HomeBottomNavigationEvent) yield HomeBottomNavigationState();
    if (event is TicketsBottomNavigationEvent)
      yield TicketsBottomNavigationState();
    if (event is MessagesBottomNavigationEvent)
      yield MessagesBottomNavigationState(index: event.index);
    if (event is ProductsBottomNavigationEvent)
      yield ProductsBottomNavigationState(index: event.index);
  }
}
