import 'package:flutter/material.dart';

class ContainerTaskWidget extends StatelessWidget {
  const ContainerTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326,
      height: 168,
      decoration: BoxDecoration(
        color: const Color(0xFFECFDF3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Positive vibes',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF344054),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Boost your mood with',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'positive vibes',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle_filled,
                      color: Color(0xFF32D583),
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '10 mins',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Image(
            image: AssetImage('assets/icons/ic_walking_theDog.png'),
          ),
        ],
      ),
    );
  }
}
