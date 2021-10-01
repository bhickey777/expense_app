import 'package:intl/intl.dart';
import 'dart:math';

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

  double roundAmountAsCurrency() {
    num mod = pow(10.0, 2);
    return ((amount * mod).round().toDouble() / mod);
  }
}
