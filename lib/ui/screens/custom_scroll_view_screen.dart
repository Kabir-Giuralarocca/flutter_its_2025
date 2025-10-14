import 'package:flutter/material.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 360,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar', style: TextStyle(color: Colors.white)),
              background: Image.asset(
                'assets/images/image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.blue[(index + 1) * 100],
                  leading: Text(
                    '${index + 1}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                );
              },
              itemCount: 9,
              separatorBuilder: (context, index) => const Divider(height: 16),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink[(index + 1) * 100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Item $index'),
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Image.asset('assets/images/image.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
