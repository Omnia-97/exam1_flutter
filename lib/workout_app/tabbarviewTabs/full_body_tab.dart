import 'package:flutter/material.dart';

class FullBodyTab extends StatelessWidget {
  const FullBodyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 326,
          height: 174,
          margin: const EdgeInsets.all(16),
          color: Colors.deepPurple,
          child: const Center(
            child: Text('Tab 2'),
          ),
        ),
      ],
    );
  }
}
