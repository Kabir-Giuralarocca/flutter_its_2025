import 'package:flutter/material.dart';
import 'package:flutter_its_2025/ui/widgets/layout/action_section.dart';
import 'package:flutter_its_2025/ui/widgets/layout/image_section.dart';
import 'package:flutter_its_2025/ui/widgets/layout/title_section.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Screen')),
      body: const SingleChildScrollView(
        child: Column(
          spacing: 32,
          children: [
            ImageSection(),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 40),
              child: Column(
                spacing: 32,
                children: [
                  TitleSection(),
                  ActionSection(),
                  Text(
                    'Consectetur elit reprehenderit ea dolor proident sint deserunt voluptate non. Nostrud cupidatat consectetur mollit voluptate proident fugiat officia aute. Fugiat et ut reprehenderit sint laboris incididunt amet. Excepteur incididunt laboris cupidatat adipisicing officia veniam culpa.',
                  ),
                  Text(
                    'Consectetur elit reprehenderit ea dolor proident sint deserunt voluptate non. Nostrud cupidatat consectetur mollit voluptate proident fugiat officia aute. Fugiat et ut reprehenderit sint laboris incididunt amet. Excepteur incididunt laboris cupidatat adipisicing officia veniam culpa.',
                  ),
                  Text(
                    'Consectetur elit reprehenderit ea dolor proident sint deserunt voluptate non. Nostrud cupidatat consectetur mollit voluptate proident fugiat officia aute. Fugiat et ut reprehenderit sint laboris incididunt amet. Excepteur incididunt laboris cupidatat adipisicing officia veniam culpa.',
                  ),
                  Text(
                    'Consectetur elit reprehenderit ea dolor proident sint deserunt voluptate non. Nostrud cupidatat consectetur mollit voluptate proident fugiat officia aute. Fugiat et ut reprehenderit sint laboris incididunt amet. Excepteur incididunt laboris cupidatat adipisicing officia veniam culpa.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
