import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Image.asset(
            'assets/images/image.jpg',
            height: 360,
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image.jpg',
            height: 360,
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/image.jpg',
            width: MediaQuery.sizeOf(context).width,
            height: 360,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}