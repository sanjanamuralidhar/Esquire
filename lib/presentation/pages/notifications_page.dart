import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: LocalizedText(text: Text('Notifications')),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_off,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            SizedBox(
              height: 10,
            ),
            LocalizedText(
              text: Text(
                'No new notifications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
