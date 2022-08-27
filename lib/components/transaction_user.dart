import 'package:flutter/material.dart';
import 'dart:math';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 368.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de Agua',
      value: 445.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de Telefone',
      value: 638.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de Gás',
      value: 578.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Roupas',
      value: 150.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Alexa',
      value: 100.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't9',
      title: 'Aluguel',
      value: 357.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't10',
      title: 'Notebook',
      value: 3000.30,
      date: DateTime.now(),
    ),
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
