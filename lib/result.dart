import 'package:flutter/material.dart';

class result extends StatelessWidget {
  int resultScore;
  final Reset;
  result(this.resultScore, this.Reset);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 16) {
      resultText = "You are innocent and fun loving";
    } else if (resultScore > 16 && resultScore <= 20) {
      resultText = "Superr!!!";
    } else {
      resultText = "Superficial";
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
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
              fontStyle: FontStyle.italic),
        ),
        FlatButton(
          onPressed: Reset,
          child: Text("Restart Quiz"),
          textColor: Colors.amber,
        ),
      ],
    ));
  }
}
