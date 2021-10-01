import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionRowBuilder builder = TransactionRowBuilder();

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      //list view needs a constainer to constrain height
      height: 400,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          Transaction tx = transactions.elementAt(index);
          return builder.build(ctx, tx);
        },
      ),
    );
  }
}

class TransactionRowBuilder {
  TransactionRowBuilder();

  Widget build(BuildContext context, Transaction tx) {
    return Row(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.deepPurple, width: 2, style: BorderStyle.solid),
        ),
        padding: EdgeInsets.all(8),
        child: Text(
          '\$${tx.amount.toStringAsFixed(2)}',
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
