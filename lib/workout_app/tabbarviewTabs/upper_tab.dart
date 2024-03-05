import 'package:flutter/material.dart';

class UpperTab extends StatelessWidget {
  const UpperTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 174,
      margin: const EdgeInsets.all(16),
      color: Colors.deepPurple,
      child: const Center(
        child: Text('Tab 3'),
      ),
    );
  }
}
