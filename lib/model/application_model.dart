/*
 * Created by Vinsensius Arko on 21/05/2025, 20:09
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 20:09
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

List<IconData> iconList = <IconData>[
  Icons.arrow_circle_right_outlined,
  Icons.sticky_note_2_outlined,
  Icons.account_balance_wallet_outlined,
  Icons.add_card_outlined
];

List<String> labelList = const <String>[
  'IDR Transfer',
  'Payment/VA',
  'Top-up',
  'Physical/Virtual Card',
];

class MenuFavoriteModel {
  final IconData icon;
  final String label;
  final Color color;


  MenuFavoriteModel({
    required this.icon,
    required this.label,
    required this.color,
  });
}

final List<MenuFavoriteModel> favoriteList = [
  MenuFavoriteModel(
    icon: Icons.arrow_circle_right_outlined,
    label: 'IDR Transfer',
    color: Colors.teal,
  ),
  MenuFavoriteModel(
    icon: Icons.sticky_note_2_outlined,
    label: 'Payment/VA',
    color: Colors.cyan,
  ),
  MenuFavoriteModel(
    icon: Icons.account_balance_wallet_outlined,
    label: 'Top-up',
    color: Colors.lightGreen,
  ),
  MenuFavoriteModel(
    icon: Icons.add_card_outlined,
    label: 'e-money',
    color: Colors.orange,
  ),
  MenuFavoriteModel(
    icon: Icons.sim_card_download_outlined,
    label: 'Cardless',
    color: Colors.purpleAccent,
  ),
];

class ThumbCategoryModel {
  final IconData icon;
  final String label;
  final Color color;


  ThumbCategoryModel({
    required this.icon,
    required this.label,
    required this.color,
  });
}

final List<ThumbCategoryModel> thumbCategoryList = [
  ThumbCategoryModel(
    icon: Icons.electric_bolt,
    label: 'Quick Pick',
    color: Colors.yellow,
  ),
  ThumbCategoryModel(
    icon: Icons.currency_exchange,
    label: 'Forex Transfer',
    color: Colors.tealAccent,
  ),
  ThumbCategoryModel(
    icon: Icons.attach_money,
    label: 'Request Money',
    color: Colors.teal,
  ),
  ThumbCategoryModel(
    icon: Icons.cast_connected,
    label: 'Tap to Pay',
    color: Colors.indigo,
  ),
  ThumbCategoryModel(
    icon: Icons.show_chart,
    label: 'Investment',
    color: Colors.cyan,
  ),
];

final List<ThumbCategoryModel> transferCategoryList = [
  ThumbCategoryModel(
    icon: Icons.arrow_circle_right_outlined,
    label: 'IDR Transfer',
    color: Colors.teal,
  ),
  ThumbCategoryModel(
    icon: Icons.currency_exchange,
    label: 'Forex Transfer',
    color: Colors.tealAccent,
  ),
  ThumbCategoryModel(
    icon: Icons.qr_code,
    label: 'QR Transfer',
    color: Colors.indigo,
  ),
  ThumbCategoryModel(
    icon: Icons.attach_money,
    label: 'Request Money',
    color: Colors.teal,
  ),
];

final List<ThumbCategoryModel> paymentCategoryList = [
  ThumbCategoryModel(
    icon: Icons.sticky_note_2_outlined,
    label: 'Payment/VA',
    color: Colors.cyan,
  ),
  ThumbCategoryModel(
    icon: Icons.currency_exchange,
    label: 'Tap to Pay',
    color: Colors.indigo,
  ),
];

final List<ThumbCategoryModel> topupCategoryList = [
  ThumbCategoryModel(
    icon: Icons.account_balance_wallet_outlined,
    label: 'Top-up',
    color: Colors.lightGreen,
  ),
  ThumbCategoryModel(
    icon: Icons.add_card_outlined,
    label: 'e-money',
    color: Colors.orange,
  ),
];

final List<ThumbCategoryModel> serviceCategoryList = [
  ThumbCategoryModel(
    icon: Icons.show_chart,
    label: 'Investment',
    color: Colors.cyan,
  ),
  ThumbCategoryModel(
    icon: Icons.sim_card_download_outlined,
    label: 'Cardless',
    color: Colors.purpleAccent,
  ),
  ThumbCategoryModel(
    icon: Icons.sim_card_download_outlined,
    label: 'Branch Services',
    color: Colors.indigo,
  ),
  ThumbCategoryModel(
    icon: Icons.maps_home_work_outlined,
    label: 'KPR',
    color: Colors.pinkAccent,
  ),
  ThumbCategoryModel(
    icon: Icons.category,
    label: 'Others',
    color: Colors.blueGrey,
  ),
];

class EwaletModel {
  final IconData icon;
  final String amount;
  final Color color;

  EwaletModel({
    required this.icon,
    required this.amount,
    required this.color,
  });
}

final List<EwaletModel> ewaletList = [
  EwaletModel(
    icon: Icons.dashboard,
    amount: '500.000',
    color: Colors.lightBlueAccent,
  ),
  EwaletModel(
    icon: Icons.gamepad,
    amount: '200.000',
    color: Colors.tealAccent,
  ),
  EwaletModel(
    icon: Icons.safety_check_rounded,
    amount: '0',
    color: Colors.purpleAccent,
  ),
  EwaletModel(
    icon: Icons.arrow_circle_right_outlined,
    amount: '20.000',
    color: Colors.lightBlueAccent,
  ),
];