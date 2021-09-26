import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
              UserTransactions(),
            ]),
      ),
    );
  }
}
