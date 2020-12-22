import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RatingCard extends StatelessWidget {
  final String title;
  final Function onTap;
  RatingCard({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FormBuilderRate(
            attribute: 'rate',
            iconSize: 35.0,
            initialValue: 1.0,
            max: 5.0,
            onChanged: onTap,
            decoration: InputDecoration(border: InputBorder.none),
            filledColor: Colors.yellow,
            emptyColor: Colors.grey,
            isHalfAllowed: true,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Very bad',
              style: TextStyle(fontSize: 12),
            ),
            Text('Very good', style: TextStyle(fontSize: 12))
          ],
        ),
      ],
    );
  }
}
