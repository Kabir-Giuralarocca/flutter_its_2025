import 'package:flutter/material.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  List<IconData> get icons => [Icons.call, Icons.near_me, Icons.share];
  List<String> get labels => ['CALL', 'ROUTE', 'SHARE'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 3; i++)
          Column(
            children: [
              Icon(icons[i], color: Colors.blue, size: 32.0),
              Text(labels[i], style: const TextStyle(color: Colors.blue)),
            ],
          ),
      ],
    );
  }
}
