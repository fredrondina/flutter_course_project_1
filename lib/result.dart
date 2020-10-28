import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'Completed';
    if (resultScore <= 30) {
      resultText = "Pretty Cool Guy";
    } else if (resultScore < 20) {
      resultText = "Now We are Talking";
    } else {
      resultText = "WOW COOL";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz'),
        )
      ],
    ));
  }
}
