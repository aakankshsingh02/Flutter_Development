import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransactions(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              textColor: Colors.orange,
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text("Add Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
