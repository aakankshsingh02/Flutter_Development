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
      'answers': ["Magenta", 'White', 'Blue', 'Green'],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': ["Panda", 'Lion', 'Tiger', 'Gorilla'],
    },
    {
      'questionText': "What's your favourite city?",
      'answers': ["New York", 'Dallas', 'Los Angeles', 'Las Vegas'],
    },
  ];
  var _quesT = 0;

  void answer() {
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
              : const result()),
    );
  }
}
