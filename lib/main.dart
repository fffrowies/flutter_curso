import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 2},
        {'text': 'Horse', 'score': 9},
        {'text': 'Monkey', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': [
        {'text': 'Sims', 'score': 3},
        {'text': 'Fifa', 'score': 6},
        {'text': 'Counter', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s your favorite team?',
      'answers': [
        {'text': 'Boca Juniors', 'score': 4},
        {'text': 'River Plate', 'score': 5},
        {'text': 'San Lorenzo', 'score': 9},
        {'text': 'Huracán', 'score': 2},
      ],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
