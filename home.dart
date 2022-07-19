// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_final_fields, unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quizapp/answer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            if (_questionIndex > 0) {
              setState(() {
                _questionIndex -= 1;
              });
            } else {
              exit(0);
            }
          },
        ),
        title: Text(
          "QUIZ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 130.0,
              margin: EdgeInsets.only(
                  bottom: 10.0, left: 30.0, right: 30.0, top: 30),
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                  child: Text(
                _questions[_questionIndex]['question'] as String,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            ...(_questions[_questionIndex]['answer']
                    as List<Map<String, Object>>)
                .map(
              (answer) => Answer(
                answerText: answer['answerText'] as String,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(70.0, 40.0),
              ),
              onPressed: () {
                setState(() {
                  _questionIndex += 1;
                });
                if (_questionIndex >= _questions.length) {
                  _resetQuiz();
                }
              },
              child: Text(
                "Next Question",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

final _questions = const [
  {
    'question': 'Grand Central Terminal, Park Avenue, New York is the worlds?',
    'answer': [
      {'answerText': 'largest railway station', 'score': true},
      {'answerText': 'highest railway station', 'score': false},
      {'answerText': 'None Of The Above', 'score': false},
    ],
  },
  {
    'question': 'Entomology is the science that studies?',
    'answer': [
      {'answerText': 'Behavior of human beings', 'score': false},
      {'answerText': 'Insects', 'score': true},
      {'answerText': 'The formation of rocks', 'score': false},
    ],
  },
  {
    'question':
        'For which of the following disciplines is Nobel Prize awarded?',
    'answer': [
      {'answerText': 'Physics and Chemistry', 'score': false},
      {'answerText': 'Physiology or Medicine', 'score': false},
      {'answerText': 'All of the above', 'score': true},
    ],
  },
  {
    'question': 'Hitler party which came into power in 1933 is known as?',
    'answer': [
      {'answerText': 'Labour Party', 'score': false},
      {'answerText': 'Nazi Party', 'score': true},
      {'answerText': 'democratic Party', 'score': false},
    ],
  },
  {
    'question': 'Guwahati High Court is the judicature of?',
    'answer': [
      {'answerText': 'Nagaland', 'score': false},
      {'answerText': 'Assam', 'score': false},
      {'answerText': 'All of the above', 'score': true},
    ],
  },
  {
    'question': '	Friction can be reduced by changing from?',
    'answer': [
      {'answerText': 'Sliding to rolling', 'score': true},
      {'answerText': 'Rolling to sliding', 'score': false},
      {'answerText': 'Dynamics to Statics', 'score': false},
    ],
  },
  {
    'question': '	Film and TV institute of India is located at?',
    'answer': [
      {'answerText': 'Pune (Maharashtra)', 'score': true},
      {'answerText': 'Rajkot (Gujrat)', 'score': false},
      {'answerText': 'Pimpri (Maharashtra)', 'score': false},
    ],
  },
  {
    'question':
        '	Fire temple is the place of worship of which of the following religion?',
    'answer': [
      {'answerText': 'Taoism', 'score': false},
      {'answerText': 'RJudaism', 'score': false},
      {'answerText': 'Zoroastrianism (Parsi Religion)', 'score': true},
    ],
  },
  {
    'question':
        '	Fire temple is the place of worship of which of the following religion?',
    'answer': [
      {'answerText': 'Birds', 'score': false},
      {
        'answerText': 'Relation between organisms and their environment',
        'score': true
      },
      {'answerText': 'Tissues', 'score': false},
    ],
  },
  {
    'question': '	The ozone layer restricts?',
    'answer': [
      {'answerText': 'Visible Light', 'score': false},
      {'answerText': 'Infrared light', 'score': false},
      {'answerText': 'Ultraviolet radiation', 'score': true},
    ],
  },
];
