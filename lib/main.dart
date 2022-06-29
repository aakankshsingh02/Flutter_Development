// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final ques = [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {"text": "Magenta", "score": 4},
        {"text": 'White', "score": 9},
        {"text": 'Blue', "score": 8},
        {"text": 'Green', "score": 7}
      ],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {"text": "Panda", "score": 6},
        {"text": 'Lion', "score": 8},
        {"text": 'Tiger', "score": 9},
        {"text": 'Gorilla', "score": 7}
      ],
    },
    {
      'questionText': "What's your favourite city?",
      'answers': [
        {"text": "New York", "score": 6},
        {"text": 'Dallas', "score": 5},
        {"text": 'Los Angeles', "score": 8},
        {"text": 'Las Vegas', "score": 10}
      ],
    },
  ];
  var _quesT = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _quesT = 0;
      _totalScore = 0;
    });
  }

  void answer(int score) {
    _totalScore += score;
    setState(() {
      _quesT++;
    });

    print(_quesT);
    if (_quesT < ques.length) {
      print("We have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: _quesT < ques.length
              ? Quiz(
                  getAnswer: answer,
                  questionList: ques,
                  questionIndex: _quesT,
                )
              : result(_totalScore, _resetQuiz)),
    );
  }
}
