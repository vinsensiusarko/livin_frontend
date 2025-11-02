/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 09:52
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/splash/splash_controller.dart';
import '../../route/route.dart';
import '../../util/dimensions.dart';
import '../../widget/custom_button.dart';
import 'component/background_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOnboarding(
        child: Container(
          alignment: AlignmentDirectional(1, 0.68),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width10 * 6),
                child: Text(
                  'Never get caught in the rain again',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width10 * 6),
                child: Text(
                  'Stay ahead of the weather with our accurate forecasts',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Dimensions.font14,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height15),
              CustomButton(
                onPressed: () {
                  Get.offNamed(Routes.getLoginScreen(), arguments: {Get.find<SplashController>().setIntro(true)});
                },
                label: 'Get Started',
                fontSize: Dimensions.font14,
              )
            ],
          ),
        ),
      )
    );
  }
}
