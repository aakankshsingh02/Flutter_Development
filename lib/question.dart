import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesT;

  Question(this.quesT);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: Text(
        quesT,
        style: const TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
