import 'package:dio/dio.dart';
import 'package:foodu/core/config/service_locator.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = 'http://192.168.0.190:5555/';

  ApiService(): _dio = getIt.get();

  Future<dynamic> get({required String endPoint ,Map<String, dynamic>? queryParameters}) async {
    var response = await _dio.get('$baseUrl$endPoint',queryParameters: queryParameters,options: Options(contentType: Headers.jsonContentType));
    return response.data;
  }
  
  Future<dynamic> post({required String endPoint ,Object? data,Map<String,dynamic>? queryParameters})async{
    await _dio.post(endPoint,data: data,queryParameters: queryParameters);
  }

}
