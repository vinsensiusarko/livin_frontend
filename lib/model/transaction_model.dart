/*
 * Created by Vinsensius Arko on 23/05/2025, 02:57
 * vinsensiusarka@gmail.com
 * Last modified 23/05/2025, 02:57
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionModel {
  final IconData icon;
  final String name;
  final String amount;
  final String transfer;
  final String status;
  final String date;

  TransactionModel({
    required this.icon,
    required this.name,
    required this.amount,
    required this.transfer,
    required this.status,
    required this.date,
  });
}

final List<TransactionModel> listTransaction = [
  TransactionModel(icon: Icons.credit_card_sharp, name: 'E-Wallet', amount: 'Rp 2.000.000', transfer: 'Mandiri to BCA', status: 'Successful', date: '05 Juni 2024'),
  TransactionModel(icon: CupertinoIcons.globe, name: 'Flip Globe', amount: 'Rp 54.500.000', transfer: 'BRI to Mandiri', status: 'Checking', date: '30 Juni 2024'),
  TransactionModel(icon: Icons.card_travel_outlined, name: 'Top Up & Bills', amount: 'Rp 50.000', transfer: 'Balence to BRI', status: 'Successful', date: '27 Maret 2024'),
  TransactionModel(icon: Icons.topic_outlined, name: 'Top Up', amount: 'Rp 7.000.000', transfer: 'From Mandiri', status: 'Successful', date: '11 September 2023'),
  TransactionModel(icon: Icons.topic_outlined, name: 'Top Up', amount: 'Rp 7.000.000', transfer: 'From Mandiri', status: 'Successful', date: '11 September 2023'),
  TransactionModel(icon: CupertinoIcons.globe, name: 'Flip Globe', amount: 'Rp 54.500.000', transfer: 'BRI to Mandiri', status: 'Checking', date: '30 Juni 2024'),
  TransactionModel(icon: Icons.card_travel_outlined, name: 'Top Up & Bills', amount: 'Rp 50.000', transfer: 'Balence to BRI', status: 'Successful', date: '27 Maret 2024'),
  TransactionModel(icon: Icons.topic_outlined, name: 'Top Up', amount: 'Rp 7.000.000', transfer: 'From Mandiri', status: 'Successful', date: '11 September 2023'),
  TransactionModel(icon: CupertinoIcons.globe, name: 'Flip Globe', amount: 'Rp 54.500.000', transfer: 'BRI to Mandiri', status: 'Checking', date: '30 Juni 2024'),
  TransactionModel(icon: Icons.card_travel_outlined, name: 'Top Up & Bills', amount: 'Rp 50.000', transfer: 'Balence to BRI', status: 'Successful', date: '27 Maret 2024'),
];