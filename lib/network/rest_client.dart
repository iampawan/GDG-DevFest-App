import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client, Response;

import 'index.dart';

// * RestClient for HTTP Requests

class RestClient implements IClient {
  Map<String, String> authHeaders;
  Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.acceptHeader: 'application/json',
  };

  Client _client;

  RestClient({Client client}) {
    if (client == null) {
      _client = Client();
    } else {
      _client = client;
    }
    authHeaders = {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    };
  }

// * Method for HTTP GET REQUEST
  @override
  Future<MappedNetworkServiceResponse<T>> getAsync<T>(String resourcePath,
      {bool customHeaders}) async {
    var response = await _client.get(
      resourcePath,
      headers: customHeaders == true ? authHeaders : headers,
    );
    return await processResponse<T>(response);
  }

// * Method for HTTP POST REQUEST
  @override
  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, dynamic data,
      {bool customHeaders = false}) async {
    if (customHeaders) {
      authHeaders.putIfAbsent("Authorization", () => "Token (if any)");
    }
    var content = json.encoder.convert(data);
    print(content);
    var response = await _client.post(resourcePath,
        body: content, headers: customHeaders == true ? authHeaders : headers);

    return await processResponse<T>(response);
  }

  Future<MappedNetworkServiceResponse<T>> processResponse<T>(
      Response response) async {
    try {
      if (!((response.statusCode < HttpStatus.ok) ||
          (response.statusCode >= HttpStatus.multipleChoices) ||
          (response.body == null))) {
        var resultClass = await compute(jsonParserIsolate, response.body);

        return MappedNetworkServiceResponse<T>(
            mappedResult: resultClass,
            networkServiceResponse: NetworkServiceResponse<T>(success: true));
      } else {
        var errorResponse = response.body;
        return MappedNetworkServiceResponse<T>(
            networkServiceResponse: NetworkServiceResponse<T>(
                success: false,
                message:
                    "(${response.statusCode}) ${errorResponse.toString()}"));
      }
    } on SocketException catch (_) {
      return MappedNetworkServiceResponse<T>(
          networkServiceResponse: NetworkServiceResponse<T>(
              success: false,
              message:
                  "(${response.statusCode}) Can't reach the servers, \n Please check your internet connection."));
    }
  }

// * JSON Decoding using Isolates
  static Map<String, dynamic> jsonParserIsolate(String res) {
    return jsonDecode(res);
  }
}
