/*
 * Created by Vinsensius Arko on 25/05/2025, 01:02
 * vinsensiusarka@gmail.com
 * Last modified 25/05/2025, 01:02
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/util/dimensions.dart';
import 'package:livin_frontend/widget/button_large.dart';
import 'package:livin_frontend/widget/circular_loading.dart';
import 'package:lottie/lottie.dart';

import '../../model/application_model.dart';
import '../../route/route.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        actionsIconTheme: IconThemeData(
          color: Colors.blue
        ),
        centerTitle: true,
        title: GestureDetector(
          onVerticalDragDown: (dragDown) {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: Dimensions.height20 * 5,
                  color: Colors.red,
                );
              }
            );
          },
          child: Container(
            height: Dimensions.height45,
            margin: EdgeInsets.only(
              top: Dimensions.height20,
            ),
            child: Column(
              children: [
                Text(
                  'Swipe Down to Peek Balance',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.8),
                    fontSize: Dimensions.font12,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: Dimensions.height10 - 8),
                Lottie.asset(
                  'assets/lottie/arrow-down.json',
                  height: Dimensions.height15,
                  width: Dimensions.width15,
                  fit: BoxFit.contain,
                  frameRate: const FrameRate(60),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.headset_mic,
              size: Dimensions.radius20,
            ),
          )
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Dimensions.height45 * 2.5),
          Center(
            child: Image.asset(
              'assets/logo/livin.png',
              color: Colors.blue,
              width: Dimensions.width30 * 5,
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(
          top: Dimensions.height10 + 2
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius12),
            topRight: Radius.circular(Dimensions.radius12),
          ),
        ),
        child: GridView.builder(
          padding: EdgeInsets.all(Dimensions.radius10 - 2),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisExtent: 100,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: favoriteList.length,
          itemBuilder: (context, index) {
            final item = favoriteList.elementAt(index);
            return InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(Dimensions.radius12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: Dimensions.radius30 + 12,
                    width: Dimensions.radius30 + 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: item.color
                    ),
                    child: Icon(
                      item.icon,
                      size: Dimensions.radius30 - 8,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: Dimensions.height10 - 6),
                  Text(
                    item.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.font12
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(Dimensions.radius20),
        child: ButtonLarge(
          onTap: () {
            Loading.show();
            Future.delayed(Duration(seconds: 2), () {
              Loading.dismiss();
            }).then((_) => Get.toNamed(Routes.getMainScreen()));
          },
          icon: Icon(
            Icons.fingerprint,
            color: Colors.white,
            size: Dimensions.radius20,
          ),
          label: 'Login',
          labelFontSize: Dimensions.font15,
        ),
      ),
    );
  }
}
