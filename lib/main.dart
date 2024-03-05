import 'package:exam_app_c10_monday/health_app/pages/home_screen.dart';
import 'package:exam_app_c10_monday/news_app/pages/home_news_screen.dart';
import 'package:exam_app_c10_monday/workout_app/pages/home_workout_screen.dart';
import 'package:exam_app_c10_monday/workout_app/tabs/home_workOut.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WorkOutHome(),
    );
  }
}
