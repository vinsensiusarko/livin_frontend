/*
 * Created by Vinsensius Arko on 08/12/2024, 05:38
 * vinsensiusarka@gmail.com
 * Last modified 07/12/2024, 19:34
 * Copyright (c) 2024.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../util/dimensions.dart';

class BottomNavigationController extends GetxController implements GetxService {
  final PageController pageController = PageController();
  int currentIndex = 0;
  DateTime? backPressTime;

  void onSwipePageIndex(int index) {
    currentIndex = index;
    update();
  }

  void onTapIndex(int index) {
    pageController.jumpToPage(index);
    update();
  }

  void setNavigationIndex() {
    currentIndex = 0;
    update();
  }

  bool onBackPress() {
    DateTime now = DateTime.now();
    if (backPressTime == null || now.difference(backPressTime!) >= const Duration(seconds: 2)) {
      backPressTime = now;
      Fluttertoast.showToast(
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        gravity: ToastGravity.SNACKBAR,
        fontSize: Dimensions.font14,
        msg: 'Tekan sekali lagi untuk keluar',
      );
      return false;
    } else {
      return true;
    }
  }
}