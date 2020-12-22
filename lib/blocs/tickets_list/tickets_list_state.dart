part of 'tickets_list_bloc.dart';

abstract class TicketsListState extends Equatable {
  const TicketsListState();

  @override
  List<Object> get props => [];
}

class TicketsLoadedState extends TicketsListState {
  final List<Ticket> tickets;
  TicketsLoadedState({this.tickets});
}

class TicketLoadingState extends TicketsListState {}

class TicketErrorState extends TicketsListState {}

class TicketEmptyState extends TicketsListState {}
