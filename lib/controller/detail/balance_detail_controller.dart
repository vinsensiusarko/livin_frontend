/*
 * Created by Vinsensius Arko on 23/05/2025, 02:57
 * vinsensiusarka@gmail.com
 * Last modified 23/05/2025, 02:57
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BalanceDetailController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  late TabController searchTabController;

  late final DraggableScrollableController sheetController;
  final double initialSheetSize = 0.5;
  final double minSheetSize = 0.5;
  final double maxSheetSize = 0.95;

  @override
  void onInit() {
    tabController = TabController(length: 7, vsync: this, initialIndex: 6);
    searchTabController = TabController(length: 1, vsync: this, initialIndex: 0);
    sheetController = DraggableScrollableController();
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    searchTabController.dispose();
    sheetController.dispose();
    super.onClose();
  }
}