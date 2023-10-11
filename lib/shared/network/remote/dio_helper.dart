import 'package:dio/dio.dart';

class DioHelper{

  static late Dio _dio;

  static void init(){
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.breakingbadquotes.xyz/v1',
      ),
    );
  }

  static Future<Response> getData({
  required String endPoint,
  Map<String,dynamic>? query,
})async{
    return await _dio.get(endPoint,queryParameters: query);
  }

}