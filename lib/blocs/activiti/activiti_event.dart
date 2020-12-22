part of 'activiti_bloc.dart';

abstract class ActivitiEvent {
  const ActivitiEvent();

  @override
  List<Object> get props => [];
}

class GetAllTaskEvent extends ActivitiEvent {
  final Ticket ticket;
  GetAllTaskEvent({this.ticket});
}

class CompleteTaskEvent extends ActivitiEvent {
  final FormDataResponse data;
  final String message;
  CompleteTaskEvent({this.data, this.message});
}
