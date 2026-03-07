/*
 * Created by Vinsensius Arko on 25/05/2025, 01:02
 * vinsensiusarka@gmail.com
 * Last modified 25/05/2025, 01:02
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/controller/auth/login_controller.dart';
import 'package:livin_frontend/util/dimensions.dart';
import 'package:livin_frontend/widget/button_large.dart';
import 'package:livin_frontend/widget/circular_loading.dart';
import 'package:lottie/lottie.dart';

import '../../model/application_model.dart';
import '../../route/route.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
          /*appBar: AppBar(
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
          ),*/
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned.fill(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: controller.blurIntensity,
                      sigmaY: controller.blurIntensity,
                      tileMode: TileMode.decal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(child: _buildLoginForm()),
                        ),
                        Flexible(
                          flex: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
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
                              Container(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 150, // Area sensitif setinggi 150px dari atas
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent, // Biar tetep nangkep meski transparan
                    onVerticalDragUpdate: controller.onDragUpdate,
                    onVerticalDragEnd: controller.onDragEnd,
                    onVerticalDragCancel: () => controller.onDragEnd(DragEndDetails()),
                    child: Container(
                      color: Colors.transparent, // Visualisasikan area sentuh jika perlu
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          /// Indikator Panah yang ikut turun dikit pas ditarik
                          Transform.translate(
                            offset: Offset(0, controller.dragOffset * 0.2),
                            child: Opacity(
                              opacity: (1 - (controller.dragOffset / controller.maxOffset)).clamp(0.0, 1.0),
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
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: controller.isAnimating ? const Duration(milliseconds: 250) : Duration.zero,
                  curve: Curves.easeOutCubic,
                  top: controller.dragOffset - controller.maxOffset,
                  left: 0,
                  right: 0,
                  child: _buildBalanceCard(),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo/livin.png',
          color: Colors.blue,
          width: Dimensions.width30 * 5,
        ),
        /*const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFDB813),
            minimumSize: const Size(200, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: const Text("MASUK", style: TextStyle(color: Color(0xFF005EA2), fontWeight: FontWeight.bold)),
        ),*/
      ],
    );
  }

  Widget _buildBalanceCard() {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Container(
          height: controller.maxOffset,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.98),
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.account_balance_wallet, color: Color(0xFF005EA2), size: 18),
                  SizedBox(width: 8),
                  Text("Mandiri Tabungan", style: TextStyle(color: Colors.black54, fontSize: 13)),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                controller.balance,
                style: const TextStyle(color: Color(0xFF005EA2), fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      }
    );
  }
}
