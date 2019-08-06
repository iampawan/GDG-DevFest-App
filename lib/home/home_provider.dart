import 'package:flutter_devfest/network/i_client.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';

abstract class IHomeProvider {
  Future<dynamic> getSpeakers();
}

class HomeProvider implements IHomeProvider {
  IClient _client;

  final String kConstGetSpeakersUrl = "${Devfest.baseUrl}/speaker-kol.json";

  HomeProvider() {
    _client = Injector().currentClient;
  }

  @override
  Future getSpeakers() async {
    var result = await _client.getAsync(kConstGetSpeakersUrl);
    if (result.networkServiceResponse.success) {
      // ProductFbResponse res = ProductFbResponse.fromJson(result.mappedResult);
      // return res;
    }

    throw Exception(result.networkServiceResponse.message);
  }
}
