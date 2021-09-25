import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  String dateAsString() {
    return DateFormat.yMd().add_jm().format(date);
  }

  Widget asWidget() {
    return Row(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.deepPurple, width: 2, style: BorderStyle.solid),
        ),
        padding: EdgeInsets.all(8),
        child: Text(
          '\$${amount}',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.deepPurple),
        ),
      ),
      Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            dateAsString(),
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
