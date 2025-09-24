import 'package:flutter/material.dart';

class ExContainerScreen extends StatelessWidget {
  const ExContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container '),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(
              'Tap the blue box to change its position',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const ParentContainer(),
        ],
      ),
    );
  }
}

class ParentContainer extends StatefulWidget {
  const ParentContainer({super.key});

  @override
  State<ParentContainer> createState() => _ParentContainerState();
}

class _ParentContainerState extends State<ParentContainer> {
  Alignment _alignment = Alignment.topLeft;
  int _colorIndex = 0;
  List<Color> _colors = [Colors.orange, Colors.deepPurpleAccent];

  void _changePosition() {
    setState(() {
      _alignment = switch (_alignment) {
        Alignment.topLeft => Alignment.topCenter,
        Alignment.topCenter => Alignment.topRight,
        Alignment.topRight => Alignment.centerLeft,
        Alignment.centerLeft => Alignment.center,
        Alignment.center => Alignment.centerRight,
        Alignment.centerRight => Alignment.bottomLeft,
        Alignment.bottomLeft => Alignment.bottomCenter,
        Alignment.bottomCenter => Alignment.bottomRight,
        Alignment.bottomRight => Alignment.topLeft,
        _ => Alignment.topLeft,
      };
      debugPrint('Alignment: $_alignment');
      _colorIndex = _colorIndex == 0 ? 1 : 0;
      _colors = _colorIndex == 0
          ? [Colors.orange, Colors.deepPurpleAccent]
          : [Colors.cyan, Colors.redAccent];
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      height: 300,
      width: double.infinity,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(24),
      alignment: _alignment,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        gradient: LinearGradient(
          colors: _colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: GestureDetector(onTap: _changePosition, child: const ChildContainer()),
    );
  }
}

class ChildContainer extends StatelessWidget {
  const ChildContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Colors.green, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
