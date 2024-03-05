import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key, required this.text1});
  String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 190,
        ),
        const Text(
          'See more',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF027A48),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Color(0xFF027A48),
        ),
      ],
    );
  }
}
