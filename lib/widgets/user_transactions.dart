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
  List<Transaction> transactions = List<Transaction>.generate(100, (i) {
    if (i == 0) {
      return Transaction(
        id: 'T-Start',
        title: 'Transaction-S',
        amount: 0.34,
        date: DateTime.now(),
      );
    } else {
      return Transaction(
        id: 'T$i',
        title: 'Transaction$i',
        amount: i * 1.34,
        date: DateTime.now(),
      );
    }
  });

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
