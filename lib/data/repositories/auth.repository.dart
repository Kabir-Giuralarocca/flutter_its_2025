import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_its_2025/data/clients/auth.client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository extends AuthClient {
  Future<void> login(String username, String password) async {
    try {
      final response = await dio.post('/login', data: {'username': username, 'password': password});
      final token = response.data['token'];
      final asyncPrefs = SharedPreferencesAsync();
      await asyncPrefs.setString('TOKEN', token);
      debugPrint('Login successful, token: $token');
    } on DioException {
      rethrow;
    }
  }
}
