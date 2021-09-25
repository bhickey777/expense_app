import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(const MyExpenseApp());
}

class MyExpenseApp extends StatelessWidget {
  const MyExpenseApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyExpensePage(),
    );
  }
}

class MyExpensePage extends StatelessWidget {
  MyExpensePage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('CHART'),
                elevation: 5,
                color: Colors.blue,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                      ),
                      FlatButton(
                          child: Text('Add Transaction'),
                          textColor: Colors.purple,
                          onPressed: () =>
                              {print("I have tried to add a transaction")}),
                    ]),
              ),
            ),
            Column(
              children: transactions.map((tx) {
                return tx.asWidget();
              }).toList(),
            ),
          ]),
    );
  }
}
