import 'dart:convert';

import 'package:dio/dio.dart';

import '../config/service_locator.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = 'https://mockbin.org/bin/';

  ApiService(): _dio = getIt.get();

  Future<dynamic> get({required String endPoint ,Map<String, dynamic>? queryParameters}) async {
    var response = await _dio.get('$baseUrl$endPoint',queryParameters: queryParameters);
    final  responseDecoded = jsonDecode(response.data);

    return responseDecoded;
  }
}
