import 'dart:async';

import 'package:bloc/bloc.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc({this.questionCount}) : super(AnswerNotSelectedState()) {
    for (int i = 0; i < questionCount; i++) {
      answers.add('empty');
    }
  }

  List<String> answers = [];
  int questionCount;

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    if (event is AnswerNotSelectedEvent) {
      yield AnswerNotSelectedState();
    }
    if (event is AnswerSelectedEvent) {
      answers[event.index] = event.answer;
      yield AnswerSelectedState(answers: this.answers);
    }
  }
}
