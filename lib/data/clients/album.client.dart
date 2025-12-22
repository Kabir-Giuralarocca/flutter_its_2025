import 'package:dio/dio.dart';

class AlbumClient {
  final BaseOptions options = BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/albums',
    contentType: 'application/json; charset=UTF-8',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );
  
  late final Dio _dio = Dio(options)
    ..interceptors.addAll([LogInterceptor(requestBody: true, responseBody: true)]);

  Dio get dio => _dio;
}
