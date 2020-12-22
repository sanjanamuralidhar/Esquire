part of 'tickets_list_bloc.dart';

abstract class TicketsListEvent extends Equatable {
  const TicketsListEvent();

  @override
  List<Object> get props => [];
}

class GetAllTicketEvent extends TicketsListEvent {
  final int page;
  GetAllTicketEvent({this.page});
}
