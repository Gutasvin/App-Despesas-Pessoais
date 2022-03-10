import 'dart:math';

import 'package:flutter/material.dart';
import './transaction_form.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novos Tenis de corrida',
        value: 300.00,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de luz e agua',
        value: 200.00,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de luz e agua',
        value: 200.00,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de luz e agua',
        value: 200.00,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de luz e agua',
        value: 200.00,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de luz e agua',
        value: 200.00,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Conta de luz e agua',
        value: 200.00,
        date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
