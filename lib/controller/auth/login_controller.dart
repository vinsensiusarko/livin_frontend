/*
 * Created by Vinsensius Arko on 25/05/2025, 10:15
 * vinsensiusarka@gmail.com
 * Last modified 25/05/2025, 10:15
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  /// Simulasi fitur diaktifkan dari setting
  var isPeekEnabled = true;

  /// Simulasi data saldo
  var balance = "Rp 15.450.000";

  /// Swipe Down Peek Balance Logic
  double dragOffset = 0.0;
  final double maxOffset = 130.0;
  bool isAnimating = false;

  void onDragUpdate(DragUpdateDetails details) {
    isAnimating = false;
    dragOffset += details.delta.dy;
    if (dragOffset < 0) dragOffset = 0;
    if (dragOffset > maxOffset) dragOffset = maxOffset;
    update();
  }

  void onDragEnd(DragEndDetails details) {
    isAnimating = true;
    dragOffset = 0.0;
    update();
  }

  double get blurIntensity => (dragOffset / maxOffset) * 5.0;
  /// End Swipe Down Peek Balance Logic
}