import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/ticket.dart';

part 'tickets_list_event.dart';
part 'tickets_list_state.dart';

class TicketsListBloc extends Bloc<TicketsListEvent, TicketsListState> {
  TicketsListBloc() : super(TicketLoadingState());
  final Openapi openApi = Openapi();

  int currenPage;
  int totalPages;
  List<Ticket> tickets = [];
  @override
  Stream<TicketsListState> mapEventToState(
    TicketsListEvent event,
  ) async* {
    if (event is GetAllTicketEvent) {
      if (event.page == 0) {
        yield TicketLoadingState();
        tickets = [];
        currenPage = null;
      }
      print(currenPage.toString() + '  ==  ' + event.page.toString());
      try {
        Response<List<Ticket>> res;
        if (currenPage != event.page) {
          res = await openApi
              .getTicketResourceApi()
              .getAllTicketsByCustomerIdUsingGET(
                Config.CUSTOMER.id,
                page: event.page,
                headers: Config.TOKEN,
              );
          currenPage = event.page;
          print('headerssssssss ' + res.headers.toString());
          print(res.data);
          tickets.addAll(res.data);
        }

        if (res != null && res.data.length == 0) {
          yield TicketEmptyState();
        }
        yield TicketsLoadedState(tickets: tickets);
      } catch (e) {
        print('getAllTicketsByCustomerIdUsingGET ' + e.toString());
        yield TicketErrorState();
      }
    }
  }
}
