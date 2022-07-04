import 'package:flutter/material.dart';
import 'package:flutter_expense_planner/models/transaction.dart';

import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> Transactions;
  TransactionList(this.Transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: Transactions.map((tx) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 3,
              )),
              padding: const EdgeInsets.all(10),
              child: Text(
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(244, 67, 54, 1)),
                "\$${tx.amount}",
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tx.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  DateFormat.yMMMMd().format(tx.date),
                  style: const TextStyle(color: Colors.green),
                ),
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
