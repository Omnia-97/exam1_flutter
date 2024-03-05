import 'package:flutter/material.dart';

class ActivityContainer extends StatelessWidget {
  ActivityContainer({
    super.key,
    required this.assetsName,
    required this.text,
    required this.textNumber,
    required this.textActivity,
  });
  String assetsName;
  String text;
  String textNumber;
  String textActivity;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            ImageIcon(
              color: const Color(0xFF717BBC),
              AssetImage(assetsName),
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Row(
            children: [
              Text(
                textNumber,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                textActivity,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
