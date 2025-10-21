import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Playground'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
        child: Column(
          spacing: 16,
          children: [
            const Text('Lorem Ipsum'),
            const Text(
              'Est elit commodo esse anim sint consectetur consectetur. Culpa dolor ad commodo occaecat consequat ipsum fugiat veniam sunt deserunt dolore nisi. Nostrud duis ea mollit aute quis ut quis amet. Dolore excepteur irure proident irure aute do.',
            ),
            FilledButton(onPressed: () {}, child: const Text('Button')),
            OutlinedButton(onPressed: () {}, child: const Text('Button')),
            RadioGroup<ThemeMode>(
              groupValue: ThemeMode.light,
              onChanged: (value) {
                debugPrint('Selected: $value');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Radio<ThemeMode>(value: ThemeMode.light),
                      Icon(Icons.light_mode),
                      Text('Light'),
                    ],
                  ),
                  Column(
                    children: [
                      Radio<ThemeMode>(value: ThemeMode.dark),
                      Icon(Icons.dark_mode),
                      Text('Dark'),
                    ],
                  ),
                  Column(
                    children: [
                      Radio<ThemeMode>(value: ThemeMode.system),
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
