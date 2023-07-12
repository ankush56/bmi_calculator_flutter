import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

import 'MainBmiPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainBmiPage(title: 'BMI Calculator'),
        '/result': (context) => Result(),
      },
    );
  }
}
