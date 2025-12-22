import 'package:flutter/foundation.dart';

class Env {
  static const String environment = String.fromEnvironment('ENV', defaultValue: 'LOCAL');
  static String baseUrl = kIsWeb
      ? const String.fromEnvironment('BASE_WEB_URL')
      : const String.fromEnvironment('BASE_URL');
}
