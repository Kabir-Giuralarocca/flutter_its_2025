import 'package:flutter/material.dart';
import 'package:flutter_its_2025/ui/screens/navigation/screen_c.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B'), automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            const Text('Welcome to Screen B!'),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Go to Screen A'),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenC()));
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Screen C'),
            ),
          ],
        ),
      ),
    );
  }
}
