import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A')),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            const Text('Welcome to Screen A!'),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/screenB');
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Screen B'),
            ),
          ],
        ),
      ),
    );
  }
}
