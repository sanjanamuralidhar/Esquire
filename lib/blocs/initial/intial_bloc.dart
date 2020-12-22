import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/ticket.dart';

part 'intial_event.dart';
part 'intial_state.dart';

class IntialBloc extends Bloc<IntialEvent, IntialState> {
  IntialBloc() : super(IntialLoadingState());
  final Openapi openApi = Openapi();
  List<String> ticketStatus;
  List<String> serviceTypes;
  @override
  Stream<IntialState> mapEventToState(
    IntialEvent event,
  ) async* {
    if (event is GetIntialdataEvent) {
      yield IntialLoadingState();
      try {
        await openApi
            .getTicketHistoryResourceApi()
            .getAllEnumTicketStatusUsingGET(headers: Config.TOKEN, page: 0)
            .then((value) => this.ticketStatus = value.data);
        await openApi
            .getServedProductResourceApi()
            .getAllEnumServiceTypesUsingGET(headers: Config.TOKEN)
            .then((value) => serviceTypes = value.data);
        print(this.ticketStatus.toString());
        yield IntialLoadedState();
      } on Exception catch (e) {
        print('getAllEnumTicketStatusUsingGET' + e.toString());
      }
    }
    // if (event is GetTicketsByStatusEvent) {
    //   List<Ticket> tickets;
    //   try {
    //     await openApi
    //         .getTicketResourceApi()
    //         .getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET(
    //             Config.USER.id, event.status,
    //             headers: Config.TOKEN, page: 0)
    //         .then((value) => tickets = value.data);
    //     yield TicketsLoadedState(tickets: tickets);
    //   } on Exception catch (e) {
    //     print('getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET' +
    //         e.toString());
    //   }
    // }
  }
}
