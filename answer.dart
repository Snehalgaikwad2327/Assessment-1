import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;

  Answer({required this.answerText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          // color: answerColor,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20.0),
        ),
        // ignore: prefer_const_constructors
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
