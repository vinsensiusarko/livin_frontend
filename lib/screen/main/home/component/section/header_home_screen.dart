/*
 * Created by Vinsensius Arko on 26/05/2025, 15:55
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 15:46
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../route/route.dart';
import '../../../../../util/dimensions.dart';
import '../../../../../widget/button_large.dart';
import '../../../../../widget/circular_loading.dart';
import '../../../component/background_main.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundMain(
      child: Container(
        width: Dimensions.screenWidth,
        margin: EdgeInsets.only(
          top: Dimensions.height45
        ),
        padding: EdgeInsets.only(
          left: Dimensions.width10 + 5,
          bottom: Dimensions.height10 - 4
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo/livin.png',
              color: Colors.white,
              width: Dimensions.width10 * 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(right: Dimensions.width10),
                    child: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(right: Dimensions.width10),
                    child: Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isDismissible: false,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: Dimensions.height30 * 6,
                          width: Dimensions.screenWidth,
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10 + 5
                          ),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Leaving Livin'?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Dimensions.font20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  CloseButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                  )
                                ],
                              ),
                              SizedBox(height: Dimensions.height10 - 8),
                              Text(
                                "Make sure that you have completed all your activities! Thank you for using Livin' today",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Dimensions.font14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              SizedBox(height: Dimensions.height20),
                              ButtonLarge(
                                onTap: () {
                                  Loading.show();
                                  Future.delayed(Duration(seconds: 2), () {
                                    Loading.dismiss();
                                  }).then((_) => Get.offAllNamed(Routes.getLoginScreen()));
                                },
                                label: 'Log Out',
                                labelFontSize: Dimensions.font14 + 1,
                              )
                            ],
                          ),
                        );
                      }
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: Dimensions.width10 + 5),
                    child: Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
