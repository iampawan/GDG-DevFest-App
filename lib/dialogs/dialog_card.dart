import 'package:flutter/material.dart';

class DialogCard extends StatelessWidget {
  final Widget child;
  final Color color;

  DialogCard({Key key, @required this.child, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
