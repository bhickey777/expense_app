import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionRowBuilder builder = TransactionRowBuilder();

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: transactions.map((tx) {
          return builder.build(tx);
        }).toList(),
      ),
    );
  }
}

class TransactionRowBuilder {
  TransactionRowBuilder();

  Widget build(Transaction tx) {
    return Row(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.deepPurple, width: 2, style: BorderStyle.solid),
        ),
        padding: EdgeInsets.all(8),
        child: Text(
          '\$${tx.amount}',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.deepPurple),
        ),
      ),
      Column(
        children: [
          Text(
            tx.title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            tx.dateAsString(),
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.grey),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      )
    ]);
  }
}
