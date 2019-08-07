import 'package:flutter/material.dart';
import 'package:flutter_devfest/agenda/session_list.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/home/session.dart';

class CloudScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const CloudScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cloudSessions = sessions.where((s) => s.track == "cloud").toList();
    return SessionList(
      allSessions: cloudSessions,
    );
  }
}
