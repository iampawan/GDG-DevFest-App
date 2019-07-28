import 'package:flutter/material.dart';
import 'package:flutter_devfest/utils/devfest.dart';

class LoadingDialog extends StatelessWidget {
  final Widget child;

  LoadingDialog({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                height: 10,
              ),
              Text(Devfest.loading_text),
            ],
          ),
        ),
      ),
    );
  }
}
