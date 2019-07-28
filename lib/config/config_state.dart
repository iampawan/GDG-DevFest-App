import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ConfigState extends Equatable {
  ConfigState([Iterable props]) : super(props);

  /// Copy object for use in action
  ConfigState getStateCopy();
}

/// UnInitialized
class UnConfigState extends ConfigState {
  @override
  String toString() => 'UnConfigState';

  @override
  ConfigState getStateCopy() {
    return UnConfigState();
  }
}

/// Initialized
class InConfigState extends ConfigState {
  @override
  String toString() => 'InConfigState';

  @override
  ConfigState getStateCopy() {
    return InConfigState();
  }
}

class ErrorConfigState extends ConfigState {
  final String errorMessage;

  ErrorConfigState(this.errorMessage);
  
  @override
  String toString() => 'ErrorConfigState';

  @override
  ConfigState getStateCopy() {
    return ErrorConfigState(this.errorMessage);
  }
}
