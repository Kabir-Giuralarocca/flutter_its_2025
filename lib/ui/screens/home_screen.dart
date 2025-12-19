import 'package:flutter/material.dart';
import 'package:flutter_its_2025/router/routes.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: ListView.separated(
        padding: const .all(24),
        itemCount: AppRoutes.values.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(AppRoutes.values[index].name),
            subtitle: Text(AppRoutes.values[index].path),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Colors.blueGrey),
            ),
            onTap: () => context.push(AppRoutes.values[index].path),
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 16)
      ),
    );
  }
}
