import 'package:dio/dio.dart';

class NetworkClient {
  final dio = Dio();
  static const baseUrl = 'http://192.168.0.104:8000/';

  NetworkClient() {
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        error: true,
        request: false,
        requestHeader: false,
        responseBody: true,
        responseHeader: false,
      ),
    );
  }

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters, String? token}) async {
    Map<String, dynamic> headers = {"Accept": "application/json"};
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    return await dio.get(
      baseUrl + path,
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        responseType: ResponseType.json,
      ),
    );
  }

  Future<Response> delete(String path,
      {Map<String, dynamic>? queryParameters, String? token}) async {
    Map<String, dynamic> headers = {"Accept": "application/json"};
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    return await dio.delete(
      '$baseUrl$path',
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        responseType: ResponseType.json,
      ),
    );
  }

  Future<Response> put(String path,
      {Map<String, dynamic>? queryParameters, String? token}) async {
    Map<String, dynamic> headers = {"Accept": "application/json"};
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    return await dio.put(
      '$baseUrl$path',
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        responseType: ResponseType.json,
      ),
    );
  }

  Future<Response> post(String path,
      {Map<String, dynamic>? queryParameters, String? token}) async {
    Map<String, dynamic> headers = {"Accept": "application/json"};
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    return await dio.post(
      '$baseUrl$path',
      queryParameters: queryParameters,
      options: Options(
        headers: headers,
        responseType: ResponseType.json,
      ),
    );
  }
}
