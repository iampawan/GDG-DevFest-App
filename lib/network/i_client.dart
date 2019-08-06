import 'network_service_response.dart';

// * Inteface for different Clients
abstract class IClient {
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String resourcePath,
      {bool customHeaders});
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, dynamic data,
      {bool customHeaders = false});
}


// *  Not needed as of now
class MockClient implements IClient {
  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String resourcePath,
      {bool customHeaders}) {
    return null;
  }

  @override
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, data,
      {bool customHeaders = false}) {
    return null;
  }
}
