import 'package:dio/dio.dart';

class ApiServisce {
  ApiServisce(this.dio);

  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  Future<Map<String, dynamic>> get({required String endpont}) async {
    var response = await dio.get("${_baseUrl}${endpont}");
    return response.data;
  }
}
