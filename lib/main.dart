// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:diabetes_care/date_screen.dart';
import 'package:diabetes_care/diabetes_screen.dart';
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
      home: DiabetesScreen(),
    );
  }
}

