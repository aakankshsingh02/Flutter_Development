import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  int questionIndex = 0;
  final getAnswer;
  Quiz({
    required this.questionList,
    required this.getAnswer,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questionList[questionIndex]['questionText'].toString(),
      ),
      ...((questionList[questionIndex]['answers']) as List<String>)
          .map((answers) {
        return Answer(getAnswer, answers.toString());
      }).toList()
    ]);
  }
}
