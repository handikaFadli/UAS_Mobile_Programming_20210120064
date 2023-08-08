import 'package:flutter/material.dart';
import 'package:uas_20210120064/login.screen.dart';
import 'package:uas_20210120064/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Pallete.backgroundColor),
      home: const LoginScreen(),
    );
  }
}
