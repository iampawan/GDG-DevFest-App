import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeState extends Equatable {
  HomeState([Iterable props]) : super(props);

  /// Copy object for use in action
  HomeState getStateCopy();
}

/// UnInitialized
class UnHomeState extends HomeState {
  @override
  String toString() => 'UnHomeState';

  @override
  HomeState getStateCopy() {
    return UnHomeState();
  }
}

/// Initialized
class InHomeState extends HomeState {
  @override
  String toString() => 'InHomeState';

  @override
  HomeState getStateCopy() {
    return InHomeState();
  }
}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  ErrorHomeState(this.errorMessage);
  
  @override
  String toString() => 'ErrorHomeState';

  @override
  HomeState getStateCopy() {
    return ErrorHomeState(this.errorMessage);
  }
}
