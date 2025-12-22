import 'package:flutter/material.dart';
import 'package:flutter_its_2025/config/environment.dart';
import 'package:flutter_its_2025/router/app_router.dart';
import 'package:flutter_its_2025/ui/theme/theme.dart';

void main() {
  runApp(const MyApp());

  debugPrint('Current Environment: ${Env.environment}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: AppRouter.router,
      // home: const ThemeScreen(),
    );
  }
}
