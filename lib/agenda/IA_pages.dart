import 'package:flutter/material.dart';

import 'package:flutter_devfest/agenda/session_list.dart';
import 'package:flutter_devfest/home/index.dart';

class IaScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const IaScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var sessions = state.sessionsData.sessions;
    var webSessions = sessions.where((s) => s.track == "ia").toList();
    return SessionList(
      allSessions: webSessions,
    );
  }
}
