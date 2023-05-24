// ignore_for_file: prefer_const_constructors

import 'package:diabetes_care/login_screen.dart';
import 'package:diabetes_care/symptoms_screen.dart';
import 'package:flutter/material.dart';

import 'splash_screen.dart';

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
      title: 'Diabetes Care',
      home: LoginScreen(),
    );
  }
}

