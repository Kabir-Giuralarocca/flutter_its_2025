import 'package:dio/dio.dart';
import 'package:flutter_its_2025/data/clients/movie.client.dart';

class MovieRepository extends MovieClient {
  Future<Response> movies() async {
    try {
      final response = await dio.get('');
      return response;
    } on DioException {
      rethrow;
    }
  }
}