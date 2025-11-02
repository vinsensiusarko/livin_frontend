/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 09:58
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../constant/application_constant.dart';
import '../../controller/splash/splash_controller.dart';
import '../../util/dimensions.dart';
import 'component/background_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: Get.find<SplashController>(),
      builder: (controller) {
        return Scaffold(
          key: controller.globalKey,
          extendBody: true,
          body: BackgroundSplash(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/logo-app.png',
                    width: 180,
                  ),
                  SizedBox(height: Dimensions.height15),
                  Text(
                    ApplicationConstant.applicationName,
                    style: TextStyle(
                      fontSize: Dimensions.font20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withValues(alpha: 0.6)
                    ),
                  ),
                  Lottie.asset(
                    'assets/lottie/loading.json',
                    width: 100,
                    height: Dimensions.loginImg,
                    fit: BoxFit.contain,
                    frameRate: const FrameRate(60),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
