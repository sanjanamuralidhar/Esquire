part of 'quiz_bloc.dart';

abstract class QuizState {
  const QuizState();

  @override
  List<Object> get props => [];
}

class AnswerSelectedState extends QuizState {
  List<String> answers;
  AnswerSelectedState({this.answers});
}

class AnswerNotSelectedState extends QuizState {}
