/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 09:03
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/splash/splash_repository.dart';
import '../../route/route.dart';

class SplashController extends GetxController {
  final SplashRepository splashRepository;
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  SplashController({required this.splashRepository});

  @override
  Future<void> onReady() async {
    routeConfig();
    super.onReady();
  }

  void routeConfig() async {
    Future.delayed(const Duration(seconds: 3), () {
      if (showIntro() == false) {
        Get.offNamed(Routes.getOnboardingScreen());
      } else {
        Get.offNamed(Routes.getLoginScreen());
      }
    });
  }

  bool showIntro() {
    return splashRepository.showSplash();
  }

  void setIntro(bool intro) {
    splashRepository.setIntro(intro);
  }
}