part of 'chatroom_bloc.dart';

abstract class ChatroomEvent {
  const ChatroomEvent();

  @override
  List<Object> get props => [];
}

class MessageUpdateEvent extends ChatroomEvent {
  Message message;
  MessageUpdateEvent({this.message});
}
