// ignore_for_file: deprecated_member_use

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
  var _quesT = 0;

  void answer() {
    setState(() {
      _quesT++;
    });

    print(_quesT);
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(children: [
          Question(
            ques[_quesT]['questionText'].toString(),
          ),
          ...((ques[_quesT]['answers']) as List<String>).map((answers) {
            return Answer(answer, answers.toString());
          }).toList()
        ]),
      ), 
    );
  }
}
