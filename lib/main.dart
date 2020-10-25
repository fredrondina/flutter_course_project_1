import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  final questions = const [
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
        body: questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'],
                  ),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text("Completed"),
              ),
      ),
    );
  }
}
