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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': "What's your favorite colour?",
      'answers': ['Black', 'Red', 'Purple', 'Yellow']
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Lizard', 'Dog', 'Cat', 'Bird']
    },
    {
      'questionText': "What's your favorite car?",
      'answers': ['Kia', 'Chevy', 'Mercedes', 'Ford']
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result()
      ),
    );
  }
}
