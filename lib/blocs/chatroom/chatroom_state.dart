part of 'chatroom_bloc.dart';

abstract class ChatroomState {
  final List<Message> messages = [];
  ChatroomState();

  @override
  List<Object> get props => [];
}

class MessageUpdateState extends ChatroomState {
  final List<Message> messages;
  MessageUpdateState({this.messages});
}
