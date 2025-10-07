import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column Screen'),
      ),
      body: Column(
        spacing: 32,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.purple,
                    width: 80,
                    height: 80,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  width: 60,
                  height: 60,
                ),
                Container(
                  color: Colors.green,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.blueGrey,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Flexible(
                  child: Container(
                    color: Colors.purple,
                    width: 80,
                    height: 80,
                  ),
                ),
                Container(
                  color: Colors.amber,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: 60,
                  height: 60,
                ),
                Container(
                  color: Colors.green,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
