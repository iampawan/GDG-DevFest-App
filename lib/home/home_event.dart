import 'dart:async';
import 'package:flutter_devfest/home/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  @override
  String toString() => 'LoadHomeEvent';

  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async {
    try {
      await Future.delayed(new Duration(seconds: 1));

      return new InHomeState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return new ErrorHomeState(_?.toString());
    }
  }
}
