import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex =
          _questionIndex == 2 ? (_questionIndex = 0) : _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Green', 'White', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Horse', 'Snail'],
      },
      {
        'questionText': 'What\'s your favorite NBA team?',
        'answers': ['Wizards', 'Bulls', 'Lakers', 'Clippers'],
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(answer, _answerQuestion);
              }).toList(),
              // ElevatedAnswer(questions[2]['answers'], _answerQuestion),
            ],
          )),
    );
  }
}
