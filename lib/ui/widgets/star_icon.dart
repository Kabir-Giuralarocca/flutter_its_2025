import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class StarIcon extends StatefulWidget {
  const StarIcon({super.key});

  @override
  State<StarIcon> createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  double _fillState = 0;

  void _toggleFill() => setState(() => _fillState = 1 - _fillState);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleFill,
      child: Icon(Symbols.star, color: Colors.amber, size: 200, fill: _fillState, weight: 200),
    );
  }
}
