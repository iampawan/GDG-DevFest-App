import 'package:flutter_devfest/network/index.dart';

enum Flavor { MOCK, REST, FIREBASE }

enum DataMode { DART, JSON }

//DI
class Injector {
  static final Injector _singleton = new Injector._internal();
  static Flavor _flavor;
  static DataMode _dataMode;

  static void configure(Flavor flavor, DataMode dataMode) {
    _flavor = flavor;
    _dataMode = dataMode;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  IClient get currentClient {
    switch (_flavor) {
      case Flavor.MOCK:
        return MockClient();
      case Flavor.FIREBASE:
        //* Yet to add
        return FirebaseClient();
      default:
        return RestClient();
    }
  }

  DataMode get currentDataMode {
    switch (_dataMode) {
      case DataMode.DART:
        return DataMode.DART;
      case DataMode.JSON:
        return DataMode.JSON;
      default:
        return DataMode.DART;
    }
  }
}
