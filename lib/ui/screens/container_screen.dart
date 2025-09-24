import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Container Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(24),
            child: const Text(
              'Container with margin and padding',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
            alignment: Alignment.center,
            child: const Text(
              '100x100',
            ),
          ),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 24),
            decoration:  BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blueGrey, width: 8),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  blurRadius: 16,
                  color: Colors.cyan,
                  offset: Offset(-4, 2),
                ),
              ],
            ),
            child: const Text(
              'Decorated Container',
            ),
          ),
          Container(
            color: Colors.deepPurple,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(top: 24),
            transform: Matrix4.rotationZ(0.3),
            child: const Text(
              'Container ruotato', style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
