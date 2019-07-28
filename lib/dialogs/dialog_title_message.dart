import 'package:flutter/material.dart';

import 'dialog_card.dart';

class TitleMessageDialog extends StatelessWidget {
  final String title;
  final String message;

  const TitleMessageDialog({Key key, this.title = "", @required this.message})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DialogCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            softWrap: true,
            textScaleFactor: 1.5,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            message,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
