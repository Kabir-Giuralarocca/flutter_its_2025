import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Corso Flutter ITS 2025', style: Theme.of(context).textTheme.titleLarge),
              Text(
                'Busto Arsizio, VA, Italia',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade700),
              ),
            ],
          ),
        ),
        TextButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(seconds: 1),
                content: Text('Grazie per il tuo feedback!'),
                behavior: SnackBarBehavior.floating,
                showCloseIcon: true,
              ),
            );
          },
          label: const Text('41'),
          icon: const Icon(Icons.star, color: Colors.red, size: 24.0),
        ),
      ],
    );
  }
}
