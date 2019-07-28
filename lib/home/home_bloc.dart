import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_devfest/home/index.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static final HomeBloc _homeBlocSingleton = new HomeBloc._internal();
  factory HomeBloc() {
    return _homeBlocSingleton;
  }
  HomeBloc._internal();
  
  HomeState get initialState => new UnHomeState();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }
}
