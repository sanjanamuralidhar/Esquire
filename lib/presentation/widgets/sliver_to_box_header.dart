import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/material.dart';

class SliverToBoxHeader extends StatelessWidget {
  final String header;
  final bool trailing;
  final Function onTap;

  SliverToBoxHeader({this.header, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LocalizedText(
                  text: Text(
                    header,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ),
          ),
          trailing
              ? Expanded(
                  flex: 4,
                  child: FlatButton(
                      textColor: Theme.of(context).textTheme.bodyText1.color,
                      onPressed: onTap,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('View all'),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      )))
              : Container()
        ],
      ),
    );
  }
}
