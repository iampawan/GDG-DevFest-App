// * Inteface for different Clients
import 'index.dart';

abstract class IClient {
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String resourcePath,
      {bool customHeaders});
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, dynamic data,
      {bool customHeaders = false});
}
