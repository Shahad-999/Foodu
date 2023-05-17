import 'dart:convert';

import 'package:dio/dio.dart';

import '../config/service_locator.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = 'https://mockbin.org/bin/';

  ApiService(): _dio = getIt.get();

  Future<dynamic> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');
    final  responseDecoded = jsonDecode(response.data);

    return responseDecoded;
  }
}
