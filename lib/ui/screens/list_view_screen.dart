import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Screen')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('Lorem Ipsum'),
            subtitle: const Text('Dolor sit amet'),
            leading: Text('${index + 1}', style: const TextStyle(fontSize: 20)),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            tileColor: Colors.amber.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Colors.cyan, width: 2),
            ),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 1),
                content: Text('Item ${index + 1} tapped'),
              ),
            ),
          );
        },
        itemCount: 100,
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.red, height: 40);
        },
      ),
    );
  }
}
