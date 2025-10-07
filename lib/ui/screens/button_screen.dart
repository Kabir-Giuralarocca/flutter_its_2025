import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Screen')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 24,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
              FilledButton(onPressed: () {}, child: const Text('Filled Button')),
              FilledButton.tonal(onPressed: () {}, child: const Text('Filled Tonal Button')),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined Button')),
              TextButton(onPressed: () {}, child: const Text('Text Button')),
              IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),

              ElevatedButton(
                onPressed: () {},
                style: buttonStyle,
                child: const Text('Custom Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final ButtonStyle buttonStyle = ButtonStyle(
  backgroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) {
      return Colors.green;
    }
    return Colors.purple;
  }),
  foregroundColor: const WidgetStatePropertyAll(Colors.white),
  shadowColor: const WidgetStatePropertyAll(Colors.yellow),
  padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
  minimumSize: const WidgetStatePropertyAll(Size.fromHeight(48)),
);
