import 'package:flutter/material.dart';


class DailyActionWidget extends StatelessWidget {
  DailyActionWidget(
      {super.key,
        required this.textDay,
        required this.textExercise,
        required this.description,
        required this.assetsName});
  String textDay;
  String textExercise;
  String description;
  String assetsName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFEAECF5)),
        color: const Color(0xFFF8F9FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFFCFCFD),
                      border: Border.all(color: const Color(0xFFE4E7EC),),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textDay,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),const SizedBox(height: 6),
                Text(
                  textExercise,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),const SizedBox(height: 2),
                const Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      size: 18,
                      color: Color(0xFF101828),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '30 mins',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Image.asset(assetsName,width: 145,),

          ],
        ),
      ),
    );
  }
}