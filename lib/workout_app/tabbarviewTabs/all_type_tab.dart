import 'package:exam_app_c10_monday/workout_app/widgets/daily_action_widget.dart';
import 'package:flutter/material.dart';

class AllTypeTab extends StatelessWidget {
  const AllTypeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 8,),
        DailyActionWidget(
          textDay: '7 days',
          textExercise: 'Morning Yoga',
          description: 'Improve mental focus.',
          assetsName: 'assets/images/img_workout_app/yoga_img.png',
          width: 146.96,
        ),
        DailyActionWidget(
            textDay: '3 days',
            textExercise: 'Plank Exercise',
            description: 'Improve posture and stability.',
            assetsName: 'assets/images/img_workout_app/plank_img.png',
            width: 145),
        DailyActionWidget(
          textDay: '7 days',
          textExercise: 'Morning Yoga',
          description: 'Improve mental focus.',
          assetsName: 'assets/images/img_workout_app/yoga_img.png',
          width: 146.96,
        ),
      ],
    );
  }
}
