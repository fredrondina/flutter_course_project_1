import 'package:flutter/material.dart';
import 'package:flutter_course_project_1/quiz.dart';
import 'package:flutter_course_project_1/result.dart';

import './quiz.dart';
import 'result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': "What's your favorite colour?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 20}
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Cat', 'score': 12},
        {'text': 'Dog', 'score': 9},
        {'text': 'Mouse', 'score': 15}
      ]
    },
    {
      'questionText': "What's your favorite car?",
      'answers': [
        {'text': 'Ford', 'score': 10},
        {'text': 'Mercedes', 'score': 5},
        {'text': 'Kia', 'score': 12}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My First App')),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
