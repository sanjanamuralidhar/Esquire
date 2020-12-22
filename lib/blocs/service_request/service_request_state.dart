part of 'service_request_bloc.dart';

@immutable
abstract class ServiceRequestState {
  final product = null;
  const ServiceRequestState();
}

class ServiceRequestInitialState extends ServiceRequestState {}

class ServiceRequestErrorState extends ServiceRequestState {}

class ServiceRequestCompletedState extends ServiceRequestState {
  Ticket ticket;
  ServiceRequestCompletedState({this.ticket});
}
