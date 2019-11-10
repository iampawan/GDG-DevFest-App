import 'package:flutter_devfest/home/home_provider.dart';
import 'package:flutter_devfest/network/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(("Api tests"), () {
    test(
      "Should Fetch Speakers List",
          () async {
        IClient _client = MockClient();
        final res = await _client.getAsync(HomeProvider.kConstGetSpeakersUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
    test(
      "Should Fetch Session List",
          () async {
        IClient _client = MockClient();
        final res = await _client.getAsync(HomeProvider.kConstGetSessionsUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
    test(
      "Should Fetch Team List",
          () async {
        IClient _client = MockClient();
        final res = await _client.getAsync(HomeProvider.kConstGetTeamsUrl);
        print(res.mappedResult);
        expect(res.networkServiceResponse.success, isTrue);
      },
    );
  });
}
