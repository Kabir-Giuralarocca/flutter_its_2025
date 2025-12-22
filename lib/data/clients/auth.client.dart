import 'package:dio/dio.dart';
import 'package:flutter_its_2025/config/environment.dart';

class AuthClient {
  final BaseOptions options = BaseOptions(
    baseUrl: '${Env.baseUrl}/api/auth',
    contentType: 'application/json; charset=UTF-8',
  );

  late final Dio _dio = Dio(options)
    ..interceptors.add(LogInterceptor());

  Dio get dio => _dio;  
}