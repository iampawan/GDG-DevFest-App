import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_devfest/dialogs/loading_dialog.dart';
import 'package:flutter_devfest/home/home_widgets/home_front.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
    @required HomeBloc homeBloc,
  })  : _homeBloc = homeBloc,
        super(key: key);

  final HomeBloc _homeBloc;

  @override
  HomeScreenState createState() {
    return HomeScreenState(_homeBloc);
  }
}

class HomeScreenState extends State<HomeScreen> {
  final HomeBloc _homeBloc;
  HomeScreenState(this._homeBloc);

  @override
  void initState() {
    super.initState();
    this._homeBloc.dispatch(LoadHomeEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        bloc: widget._homeBloc,
        builder: (
          BuildContext context,
          HomeState currentState,
        ) {
          if (currentState is UnHomeState) {
            return Center(
              child: SpinKitChasingDots(
                color: Tools.multiColors[Random().nextInt(3)],
              ),
            );
          }
          if (currentState is ErrorHomeState) {
            return Container(
                child: Center(
              child: Text(currentState.errorMessage ?? 'Error'),
            ));
          }
          return HomeFront();
        });
  }
}
