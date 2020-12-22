import 'package:EsquireCustomerApp/presentation/widgets/feebback_content.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/material.dart';
import 'package:openapi/model/ticket.dart';

class FeedbackPage extends StatelessWidget {
  final Ticket ticket;
  FeedbackPage({this.ticket});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Feedback')),
      ),
      body: FeedbackContent(
        ticket: ticket,
      ),
    );
  }
}
