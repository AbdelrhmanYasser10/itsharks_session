import 'package:dio/dio.dart';

class DioHelper{

  static late Dio dio;

  static void init() {
    String baseUrl = 'https://newsapi.org/';
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(
          seconds: 20
      ),
      receiveTimeout:const Duration(
        seconds: 20,
      ),
    );
    dio = Dio(options);
  }


  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }


}