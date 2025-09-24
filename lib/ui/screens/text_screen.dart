import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Screen')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a simple text widget.',
              style: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.w900),
            ),
            Text(
              'Commodo dolore voluptate consectetur eiusmod quis quis et reprehenderit consequat dolor ex fugiat excepteur. Occaecat aliqua veniam pariatur eu nisi nisi consequat pariatur cillum elit eiusmod amet non. Eu deserunt est voluptate ut ullamco. Consequat ullamco laboris officia do quis in. Do aliqua ad nostrud aute amet. Laborum excepteur eiusmod labore reprehenderit aute non irure aliqua veniam mollit sunt laboris pariatur nulla. Aliqua deserunt commodo proident id enim ad consequat mollit.',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
