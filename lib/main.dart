import 'package:flutter/material.dart';
import 'package:uas_20210120064/screens/base_screen.dart';
import 'package:uas_20210120064/screens/course_screen.dart';
import 'package:uas_20210120064/screens/login_screen.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS',
      theme: ThemeData(
        scaffoldBackgroundColor: Pallete.whiteColor,
        fontFamily: "SF-Pro-Text",
      ),
      home: const LoginScreen(),
      routes: {
        'login': (context) => const LoginScreen(),
        'base': (context) => const BaseScreen(),
        'profile': (context) => const ProfileScreen(),
        'course': (context) => const CourseScreen(),
      },
    );
  }
}
