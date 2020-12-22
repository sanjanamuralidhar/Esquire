import 'package:EsquireCustomerApp/blocs/quiz/quiz_bloc.dart';
import 'package:EsquireCustomerApp/mocks/models/question.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/question_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AnswerAndWinPage extends StatelessWidget {
  final List<Question> questionSet;
  AnswerAndWinPage({this.questionSet});
  @override
  Widget build(BuildContext context) {
    var _controller = PageController(
      initialPage: 0,
    );
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Answer and win')),
      ),
      body: BlocProvider<QuizBloc>(
        create: (context) => QuizBloc(questionCount: questionSet.length),
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 10,
              child: PageView.builder(
                itemCount: questionSet.length,
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: QuestionCard(
                        question: questionSet[index],
                        questionIndex: index,
                      ));
                },
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          _controller.animateToPage(
                              _controller.page.toInt() - 1,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: LocalizedText(
                          text: Text(
                            'Prev',
                            style: Theme.of(context).textTheme.button,
                          ),
                        )),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          _controller.page.toInt() + 1 == questionSet.length
                              ? showSubmitDialog(context)
                              : _controller.animateToPage(
                                  _controller.page.toInt() + 1,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear);
                        },
                        child: LocalizedText(
                          text: Text(
                            'Next',
                            style: Theme.of(context).textTheme.button,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showSubmitDialog(context) {
    showDialog(
        context: context,
        child: AlertDialog(
          title: LocalizedText(text: Text('Enter your name and phone number')),
          useMaterialBorderRadius: true,
          content: SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Phone number',
                    ),
                  ),
                ),
                FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Get.close(2);
                    },
                    child: LocalizedText(
                      text: Text(
                        'Submit',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
