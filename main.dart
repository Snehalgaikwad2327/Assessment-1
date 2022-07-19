import 'package:flutter/material.dart';
import 'package:flutter_quizapp/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Home(),
    );
  }
}
