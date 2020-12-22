import 'package:EsquireCustomerApp/blocs/quiz/quiz_bloc.dart';
import 'package:EsquireCustomerApp/blocs/toggle/toggle_bloc.dart';
import 'package:EsquireCustomerApp/mocks/models/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final questionIndex;
  final optionLeading = ['A', 'B', 'C', 'D', 'E'];

  QuestionCard({this.question, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Question ${questionIndex + 1}',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    question.question,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView(
                children: question.options
                    .map((option) => Builder(
                          builder: (context) {
                            final _quizBloc =
                                BlocProvider.of<QuizBloc>(context);
                            return BlocBuilder<QuizBloc, QuizState>(
                              builder: (context, state) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  color: state is AnswerSelectedState &&
                                          state.answers[questionIndex] == option
                                      ? Colors.red
                                      : Colors.white,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    onTap: () {
                                      _quizBloc.add(AnswerSelectedEvent(
                                          answer: option,
                                          index: questionIndex));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: state
                                                          is AnswerSelectedState &&
                                                      state.answers[
                                                              questionIndex] ==
                                                          option
                                                  ? Colors.white
                                                  : Theme.of(context)
                                                      .primaryColor,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                optionLeading[question.options
                                                    .indexOf(option)],
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: state
                                                                is AnswerSelectedState &&
                                                            state.answers[
                                                                    questionIndex] ==
                                                                option
                                                        ? Colors.red
                                                        : Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            option,
                                            style: TextStyle(
                                                color: state
                                                            is AnswerSelectedState &&
                                                        state.answers[
                                                                questionIndex] ==
                                                            option
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
