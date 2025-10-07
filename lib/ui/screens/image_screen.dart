import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Screen')),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.network(
            'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg',
            width: double.infinity,
            height: 460,
            fit: BoxFit.fill,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 48, color: Colors.red);
            },
          ),
          Positioned(
            bottom: 0,
            child: ClipOval(
              child: Image.asset(
                'assets/images/image.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
