import 'package:flutter/material.dart';

class DailyActionWidget extends StatelessWidget {
  DailyActionWidget({
    super.key,
    required this.textDay,
    required this.textExercise,
    required this.description,
    required this.assetsName,
    required this.width,
  });
  String textDay;
  String textExercise;
  String description;
  String assetsName;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 326,
        height: 174,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F9FC),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFEAECF5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 72,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCFCFD),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: const Color(0xFFE4E7EC),
                    ),
                  ),
                  child: Text(
                    textDay,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  textExercise,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/icons/ic_workout/ic_clock.png'),
                    ),
                    Text(
                      '30 mins',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Image(
              image: AssetImage(assetsName),
              width: width,
            ),
          ],
        ));
  }
}
