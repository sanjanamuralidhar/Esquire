import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.tag_faces,
          color: Colors.red,
        ),
        Text('Loading Error'),
      ],
    ));
  }
}
