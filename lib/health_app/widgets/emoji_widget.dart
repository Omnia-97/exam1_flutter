import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  EmojiWidget({super.key, required this.text, required this.assetsName});
  String assetsName;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFFE4E7EC),
          ),
          child: Image(
            image: AssetImage(assetsName),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
