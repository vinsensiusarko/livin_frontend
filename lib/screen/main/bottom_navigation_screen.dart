/*
 * Created by Vinsensius Arko on 24/05/2025, 12:29
 * vinsensiusarka@gmail.com
 * Last modified 24/05/2025, 12:22
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/screen/main/loyalty/loyalty_screen.dart';
import 'package:livin_frontend/screen/main/product/product_screen.dart';
import 'package:livin_frontend/screen/main/sukha/sukha_screen.dart';
import 'package:livin_frontend/util/dimensions.dart';

import '../../controller/main/bottom_navigation_controller.dart';
import 'home/home_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
      builder: (controller) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (GetPlatform.isAndroid) {
              bool backStatus = controller.onBackPress();
              if (backStatus) {
                SystemNavigator.pop();
              } else {

              }
            }
          },
          child: Scaffold(
            extendBody: true,
            body: Container(
              color: Colors.grey[100],
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: controller.pageController,
                allowImplicitScrolling: true,
                onPageChanged: (index) => controller.onSwipePageIndex(index),
                children: [
                  const HomeScreen(),
                  const ProductScreen(),
                  const SukhaScreen(),
                  const LoyaltyScreen(),
                ],
              ),
            ),
            floatingActionButton: Transform.translate(
              offset: const Offset(0, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.radius12 - 2),
                      ),
                      backgroundColor: Colors.blue[900],
                      elevation: 0,
                      onPressed: () {
                        showCupertinoModalPopup(
                            context: context,
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            builder: (context) {
                              return Container(
                                height: Dimensions.height45 * 5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(Dimensions.radius12),
                                    topRight: Radius.circular(Dimensions.radius12),
                                  ),
                                ),
                              );
                            }
                        );
                      },
                      child: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "QRIS",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
            bottomNavigationBar: BottomAppBar(
              height: Dimensions.height45 + 10,
              padding: EdgeInsets.zero,
              elevation: 4,
              color: Colors.white,
              shadowColor: Colors.grey,
              surfaceTintColor: Colors.white54,
              shape: null,
              notchMargin: 0,
              child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(controller: controller, Icons.home, 'Beranda', 0),
                    _buildNavItem(controller: controller, Icons.account_balance_wallet, 'Dompet', 1),
                    const SizedBox(width: 50),
                    _buildNavItem(controller: controller, Icons.history, 'Riwayat', 2),
                    _buildNavItem(controller: controller, Icons.person, 'Profil', 3),
                  ],
                ),
              ),
            ),
          ),
          /*child: Scaffold(
            extendBody: true,
            body: screenPage[controller.currentIndex],
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Align(
              alignment: const Alignment(0, 0.94),
              child: Container(
                height: Dimensions.height45 - 8,
                width: Dimensions.width45 - 8,
                // padding: EdgeInsets.all(Dimensions.radius10 + 2),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius10 + 2)),
                  border: Border.all(
                    color: Colors.white,
                    strokeAlign: 0.5
                  )
                ),
                child: FloatingActionButton.small(
                  tooltip: 'QRIS',
                  elevation: 2,
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xff1188ff),
                  onPressed: () {
                    // showMaintenanceMode(context, 'transfer mBayar');
                    *//*showModalBottomSheet(
                      elevation: 2,
                      context: context,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10,
                            sigmaY: 10,
                          ),
                          child: const ScanQRCodeScreen(),
                        );
                      }
                    );*//*
                  },
                  child: Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                    size: Dimensions.radius20 + 5,
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius12),
                  topRight: Radius.circular(Dimensions.radius12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    spreadRadius: 0.1,
                    blurRadius: 0.1,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius12),
                  topRight: Radius.circular(Dimensions.radius12),
                ),
                child: Theme(
                  data: ThemeData(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: BottomNavigationBar(
                    selectedFontSize: Dimensions.font12,
                    unselectedFontSize: Dimensions.font12,
                    selectedItemColor: Colors.blue,
                    unselectedItemColor: Colors.grey,
                    backgroundColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: controller.currentIndex,
                    onTap: (index) {
                      controller.onTapIndex(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(
                          controller.currentIndex == 0 ? Icons.home : Icons.home_outlined,
                          color: controller.currentIndex == 0 ? Colors.blue : null,
                        ),
                        label: 'Home',
                        tooltip: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          controller.currentIndex == 1 ? Icons.credit_card : Icons.credit_card_outlined,
                          color: controller.currentIndex == 1 ? Colors.blue : null,
                        ),
                        label: 'Your Product',
                        tooltip: 'Your Product',
                      ),
                      BottomNavigationBarItem(
                        icon: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2
                          ),
                          child: const Icon(null),
                        ),
                        label: 'QRIS',
                        tooltip: 'QRIS',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          controller.currentIndex == 3 ? Icons.shopify : Icons.shopify_outlined,
                          color: controller.currentIndex == 3 ? Colors.blue : null,
                        ),
                        label: 'Sukha',
                        tooltip: 'Sukha',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          controller.currentIndex == 4 ? Icons.account_circle : Icons.account_circle_outlined,
                          color: controller.currentIndex == 4 ? Colors.blue : null,
                        ),
                        label: 'Loyalty',
                        tooltip: 'Loyalty',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),*/
        );
      },
    );
  }

  /// Widget helper buat bikin item navigasi (biar kode gak kepanjangan)
  Widget _buildNavItem(IconData icon, String label, int index, {required BottomNavigationController controller}) {
    bool isSelected = controller.currentIndex == index;
    return InkWell(
      onTap: () => controller.onTapIndex(index),
      highlightColor: Colors.white,
      splashColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.blue[900] : Colors.grey),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.blue[900] : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
