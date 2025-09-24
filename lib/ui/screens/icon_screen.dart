import 'package:flutter/material.dart';
import 'package:flutter_its_2025/ui/widgets/star_icon.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Screen'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              color: Colors.blue,
              size: 64,
              semanticLabel: 'Person Icon',
              shadows: [Shadow(color: Colors.black87, offset: Offset(2, 2), blurRadius: 4)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Symbols.favorite, color: Colors.red, size: 64, weight: 200),
                Icon(Symbols.favorite, color: Colors.red, size: 64, weight: 400),
                Icon(Symbols.favorite, color: Colors.red, size: 64, weight: 500),
                Icon(Symbols.favorite, color: Colors.red, size: 64, weight: 600),
                Icon(Symbols.favorite, color: Colors.red, size: 64, weight: 900),
              ],
            ),
            StarIcon(),
          ],
        ),
      ),
    );
  }
}
