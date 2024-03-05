import 'package:exam_app_c10_monday/health_app/widgets/exercise_widget.dart';
import 'package:exam_app_c10_monday/health_app/widgets/emoji_widget.dart';
import 'package:exam_app_c10_monday/health_app/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/title_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Hello, ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF371B34),
                ),
              ),
              Text(
                'Sara Rose',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xFF371B34,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'How are you feeling today ?',
            style: TextStyle(
              color: Color(0xFF371B34),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EmojiWidget(text: 'Love', assetsName: 'assets/icons/ic_love.png'),
              EmojiWidget(text: 'Cool', assetsName: 'assets/icons/ic_cool.png'),
              EmojiWidget(
                  text: 'Happy', assetsName: 'assets/icons/ic_happy.png'),
              EmojiWidget(text: 'Sad', assetsName: 'assets/icons/ic_sad.png'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TitleWidget(
            text1: 'Feature',
          ),
          const SizedBox(
            height: 10,
          ),
          const TaskWidget(),
          const SizedBox(
            height: 14,
          ),
          TitleWidget(
            text1: 'Exercise',
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ExerciseWidget(
                  color: const Color(0xFFF9F5FF),
                  assetsName: 'assets/icons/ic_relax.png',
                  text: 'Relaxation'),
              ExerciseWidget(
                  color: const Color(0xFFFDF2FA),
                  assetsName: 'assets/icons/ic_med.png',
                  text: 'Meditation'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ExerciseWidget(
                  color: const Color(0xFFFFFAF5),
                  assetsName: 'assets/icons/ic_beath.png',
                  text: 'Breathing'),
              ExerciseWidget(
                  color: const Color(0xFFF0F9FF),
                  assetsName: 'assets/icons/ic_yoga.png',
                  text: 'Yoga'),
            ],
          ),
        ],
      ),
    );
  }
}
