import 'package:codefactory_app/course_lesson.dart';
import 'package:codefactory_app/course_not_saved.dart';
import 'package:codefactory_app/course_tests.dart';
import 'package:codefactory_app/no_payment.dart';
import 'package:codefactory_app/course_not_found.dart';
import 'package:codefactory_app/onboarding_screen.dart';
import 'package:codefactory_app/payment.dart';
import 'package:codefactory_app/product_detail.dart';
import 'package:codefactory_app/results.dart';
import 'package:codefactory_app/results2.dart';
import 'package:codefactory_app/settings.dart';
import 'package:codefactory_app/test_question.dart';
import 'package:codefactory_app/your_courses.dart';
import 'package:flutter/material.dart';
import 'package:codefactory_app/splash_screen.dart';
import 'package:codefactory_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Factory',
theme: ThemeData.light(),
      home: const OnboardingScreen(),
    );
  }
}




