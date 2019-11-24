import 'package:flutter/material.dart';
import 'package:flutter_devfest/agenda/session_list.dart';
import 'package:flutter_devfest/home/index.dart';

class AllScreen extends StatelessWidget {
  final HomeBloc homeBloc;

  const AllScreen({Key key, this.homeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = homeBloc.currentState as InHomeState;
    var sessions = state.sessionsData.sessions;
    return SessionList(
      allSessions: sessions,
    );
  }
}
