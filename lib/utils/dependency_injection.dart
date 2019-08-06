import 'package:flutter_devfest/network/index.dart';

enum Flavor { MOCK, REST, FIREBASE }

//DI
class Injector {
  static final Injector _singleton = new Injector._internal();
  static Flavor _flavor;

  static void configure(Flavor flavor) {
    _flavor = flavor;
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
}
