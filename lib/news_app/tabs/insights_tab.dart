import 'package:exam_app_c10_monday/news_app/widgets/custom_choice_chip.dart';
import 'package:exam_app_c10_monday/news_app/widgets/get_tip_widget.dart';
import 'package:exam_app_c10_monday/news_app/widgets/hot_topic_widget.dart';
import 'package:exam_app_c10_monday/news_app/widgets/title_news_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_TextFormField.dart';

class InsightsTab extends StatefulWidget {
  const InsightsTab({super.key});

  @override
  State<InsightsTab> createState() => _InsightsTabState();
}

class _InsightsTabState extends State<InsightsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        const CustomTextFormField(),
        const SizedBox(
          height: 16,
        ),
        const CustomChoiceChip(),
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 15),
          child: TitleNewsWidget(
            text1: 'Hot topics',
            width: 210,
          ),
        ),
        const HotTopicWidget(),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 35, top: 12),
          child: const Text(
            'Get Tips',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const GetTipWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 35),
          child: TitleNewsWidget(
            text1: 'Cycle Phases and Period',
            width: 85,
          ),
        ),
      ],
    );
  }
}
