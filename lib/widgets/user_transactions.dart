import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  List<Transaction> transactions = [
    Transaction(
      id: 'T1',
      title: 'First Transaction',
      amount: 17.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Second Transaction',
      amount: 15.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T3',
      title: 'Third Transaction',
      amount: 25.87,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(transactions),
      ],
    );
  }
}
