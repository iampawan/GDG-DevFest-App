import 'package:flutter/material.dart';
import 'package:flutter_devfest/agenda/session_list.dart';
import 'package:flutter_devfest/home/index.dart';

class DiversidadScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const DiversidadScreen({Key key, this.homeBloc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var sessions = state.sessionsData.sessions;
    var cloudSessions = sessions.where((s) => s.track == "diversidad").toList();
    return SessionList(
      allSessions: cloudSessions,
    );
  }
}