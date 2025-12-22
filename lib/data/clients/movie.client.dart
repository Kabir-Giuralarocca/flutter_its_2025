import 'package:dio/dio.dart';
import 'package:flutter_its_2025/config/environments.dart';
import 'package:flutter_its_2025/data/interceptors/auth.interceptor.dart';

class MovieClient {
  final BaseOptions options = BaseOptions(
    baseUrl: '$baseUrl/api/movies',
    contentType: 'application/json; charset=UTF-8',
  );

  late final Dio _dio = Dio(options)..interceptors.addAll([LogInterceptor(), AuthInterceptor()]);

  Dio get dio => _dio;
}
