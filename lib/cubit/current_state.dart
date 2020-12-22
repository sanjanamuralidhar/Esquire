import 'package:bloc/bloc.dart';

// for reference
class CurrentStateCubit extends Cubit<List<dynamic>> {
  List<dynamic> answers = [];
  int questionCount;
  CurrentStateCubit({this.questionCount}) : super(['a', 'b', 'c']) {
    for (int i = 0; i < questionCount; i++) {
      answers.add('empty');
    }
  }

  void changeValue(String value, int position) {
    answers[position] = value;
    emit(answers);
  }
}
