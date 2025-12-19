import 'package:flutter/material.dart';
import 'package:flutter_its_2025/utils/context.util.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Playground'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const .symmetric(horizontal: 24, vertical: 80),
        child: Column(
          spacing: 16,
          children: [
            Text('Lorem Ipsum', style: context.textTheme.displayLarge),
            Text(
              'Est elit commodo esse anim sint consectetur consectetur. Culpa dolor ad commodo occaecat consequat ipsum fugiat veniam sunt deserunt dolore nisi. Nostrud duis ea mollit aute quis ut quis amet. Dolore excepteur irure proident irure aute do.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            FilledButton(onPressed: () {}, child: const Text('Button')),
            OutlinedButton(onPressed: () {}, child: const Text('Button')),
            RadioGroup<ThemeMode>(
              groupValue: .light,
              onChanged: (value) {
                debugPrint('Selected: $value');
              },
              child: const Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Column(
                    children: [
                      Radio<ThemeMode>(value: .light),
                      Icon(Icons.light_mode),
                      Text('Light'),
                    ],
                  ),
                  Column(
                    children: [
                      Radio<ThemeMode>(value: .dark),
                      Icon(Icons.dark_mode),
                      Text('Dark'),
                    ],
                  ),
                  Column(
                    children: [
                      Radio<ThemeMode>(value: .system),
                      Icon(Icons.settings),
                      Text('System'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
