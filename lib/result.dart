import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You\'re a nice person';
    } else if (resultScore <= 15) {
      resultText = 'You\'re really awesome people';
    } else {
      resultText = 'You\'re very, very cool';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
          )
        ],
      ),
    );
  }
}
