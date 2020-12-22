import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/presentation/widgets/activiti_form.dart';
import 'package:EsquireCustomerApp/presentation/widgets/rating_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:openapi/model/ticket.dart';

class FeedbackContent extends StatelessWidget {
  final Ticket ticket;
  FeedbackContent({this.ticket});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ListView(
          children: [
            RatingCard(
              title: 'Customer Service',
              onTap: (val) {},
            ),
            SizedBox(
              height: 10,
            ),
            RatingCard(
              title: 'Timeliness',
              onTap: (val) {},
            ),
            SizedBox(
              height: 10,
            ),
            RatingCard(
              title: 'Communication',
              onTap: (val) {},
            ),
            SizedBox(
              height: 10,
            ),
            RatingCard(
              title: 'Customer Friendliness',
              onTap: (val) {},
            ),
            SizedBox(
              height: 10,
            ),
            FormBuilderTextField(
              attribute: 'text',
              decoration: const InputDecoration(
                labelText: 'Feedback',
              ),
              initialValue: '',
              onChanged: (val) {},
              validators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.max(70),
                FormBuilderValidators.minLength(15, allowEmpty: false),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.green,
                    onPressed: () {
                      Get.back();
                      Get.to(ActivitiForm(ticket: ticket));
                      Util.showSnackBar(
                          "Successful", "Rating Submitted Succesful");
                    },
                    child: Text(
                      'Rate us',
                      style: Theme.of(context).textTheme.button,
                    )))
          ],
        ),
      ),
    );
  }
}
