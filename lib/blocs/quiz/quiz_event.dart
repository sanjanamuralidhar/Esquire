part of 'quiz_bloc.dart';

abstract class QuizEvent {
  const QuizEvent();

  @override
  List<Object> get props => [];
}

class AnswerSelectedEvent extends QuizEvent {
  String answer;
  int index;
  AnswerSelectedEvent({this.answer, this.index});
}

class AnswerNotSelectedEvent extends QuizEvent {}
