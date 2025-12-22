import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final asyncPrefs = SharedPreferencesAsync();
    final token = await asyncPrefs.getString('TOKEN');
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }
}
