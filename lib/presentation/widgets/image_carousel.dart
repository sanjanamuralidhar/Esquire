import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/pages/answer_and_win_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageCarousel extends StatelessWidget {
  final List images;
  final bool isloyalty;

  ImageCarousel({this.images, this.isloyalty});

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromHeight(isloyalty
          ? MediaQuery.of(context).size.height / 5
          : MediaQuery.of(context).size.height / 3.7),
      child: PageView.builder(
        controller: PageController(
          initialPage: 1,
          viewportFraction: .7,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                if (isloyalty) {
                  Get.to(AnswerAndWinPage(
                    questionSet: Repo.getQuestionSet,
                  ));
                }
              },
              child: Image.network(
                images[index],
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
