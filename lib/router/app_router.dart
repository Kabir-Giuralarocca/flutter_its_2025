import 'package:flutter/material.dart';
import 'package:flutter_its_2025/router/routes.dart';
import 'package:flutter_its_2025/ui/screens/button_screen.dart';
import 'package:flutter_its_2025/ui/screens/container_screen.dart';
import 'package:flutter_its_2025/ui/screens/custom_scroll_view_screen.dart';
import 'package:flutter_its_2025/ui/screens/home_screen.dart';
import 'package:flutter_its_2025/ui/screens/http_future_screen.dart';
import 'package:flutter_its_2025/ui/screens/icon_screen.dart';
import 'package:flutter_its_2025/ui/screens/image_screen.dart';
import 'package:flutter_its_2025/ui/screens/layout_screen.dart';
import 'package:flutter_its_2025/ui/screens/list_view_screen.dart';
import 'package:flutter_its_2025/ui/screens/row_column_screen.dart';
import 'package:flutter_its_2025/ui/screens/text_screen.dart';
import 'package:flutter_its_2025/ui/screens/theme_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = .new();
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppRoutes.home.name,
        path: AppRoutes.home.path,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRoutes.httpFuture.name,
        path: AppRoutes.httpFuture.path,
        builder: (context, state) => const HttpFutureScreen(),
      ),
      GoRoute(
        name: AppRoutes.container.name,
        path: AppRoutes.container.path,
        builder: (context, state) => const ContainerScreen(),
      ),
      GoRoute(
        name: AppRoutes.icon.name,
        path: AppRoutes.icon.path,
        builder: (context, state) => const IconScreen(),
      ),
      GoRoute(
        name: AppRoutes.button.name,
        path: AppRoutes.button.path,
        builder: (context, state) => const ButtonScreen(),
      ),
      GoRoute(
        name: AppRoutes.text.name,
        path: AppRoutes.text.path,
        builder: (context, state) => const TextScreen(),
      ),
      GoRoute(
        name: AppRoutes.image.name,
        path: AppRoutes.image.path,
        builder: (context, state) => const ImageScreen(),
      ),
      GoRoute(
        name: AppRoutes.rowColumn.name,
        path: AppRoutes.rowColumn.path,
        builder: (context, state) => const RowColumnScreen(),
      ),
      GoRoute(
        name: AppRoutes.listView.name,
        path: AppRoutes.listView.path,
        builder: (context, state) => const ListViewScreen(),
      ),
      GoRoute(
        name: AppRoutes.customScrollView.name,
        path: AppRoutes.customScrollView.path,
        builder: (context, state) => const CustomScrollViewScreen(),
      ),
      GoRoute(
        name: AppRoutes.layout.name,
        path: AppRoutes.layout.path,
        builder: (context, state) => const LayoutScreen(),
      ),
      GoRoute(
        name: AppRoutes.theme.name,
        path: AppRoutes.theme.path,
        builder: (context, state) => const ThemeScreen(),
      ),
    ],
  );
}