import 'package:flutter/material.dart';

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
      home: const MyExpensePage(title: 'Expense App Page'),
    );
  }
}

class MyExpensePage extends StatefulWidget {
  const MyExpensePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyExpensePage> createState() => _MyExpensePageState();
}

class _MyExpensePageState extends State<MyExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'Widget Playground',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
