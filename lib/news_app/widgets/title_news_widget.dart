import 'package:flutter/material.dart';

class TitleNewsWidget extends StatelessWidget {
  TitleNewsWidget({super.key, required this.text1, required this.width});
  String text1;
  double width;

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
        SizedBox(
          width: width,
        ),
        const Text(
          'See all',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5925DC),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Color(0xFF5925DC),
        ),
      ],
    );
  }
}
