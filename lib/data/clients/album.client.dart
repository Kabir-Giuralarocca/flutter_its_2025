import 'package:dio/dio.dart';

class AlbumClient {
  BaseOptions get options {
    return BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/albums',
      contentType: 'application/json; charset=UTF-8',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
  }

  Dio get dio {
    final dio = Dio(options)..interceptors.addAll([LogInterceptor()]);
    return dio;
  }
}
