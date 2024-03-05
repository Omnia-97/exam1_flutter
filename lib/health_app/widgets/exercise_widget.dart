import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  ExerciseWidget(
      {super.key,
      required this.color,
      required this.assetsName,
      required this.text});
  Color color;
  String assetsName;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 56,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(assetsName),
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
