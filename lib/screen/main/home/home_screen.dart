/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 10:22
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/controller/main/home/home_controller.dart';
import 'package:livin_frontend/screen/main/home/component/balance/balance_card_component.dart';
import 'package:livin_frontend/screen/main/home/component/ecommerce/ecommerce_component.dart';
import 'package:livin_frontend/screen/main/home/component/ewalet/ewalet_component.dart';
import 'package:livin_frontend/screen/main/home/component/favorite_menu_component.dart';
import 'package:livin_frontend/screen/main/home/component/section/body_home_screen.dart';

import '../../../util/dimensions.dart';
import '../component/background_main.dart';
import 'component/info/header_info_component.dart';
import 'component/section/header_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Material(
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            child: BackgroundMain(
              child: Column(
                children: [
                  HeaderHomeScreen(),
                  BodyHomeScreen(
                    children: [
                      /// Header Component
                      HeaderInfoComponent(),
                      SizedBox(height: Dimensions.height20 * 4),
                      /// Body Component
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius20),
                            topRight: Radius.circular(Dimensions.radius20)
                          ),
                        ),
                        child: Column(
                          children: [
                            /// Balance Card
                            BalanceCardComponent(),
                            /// Favorite Menu
                            FavoriteMenuComponent(),
                            /// e-Wallet
                            EwaletComponent(),
                            /// Pay Popular e-Commerce & Ticket
                            EcommerceComponent(),
                            SizedBox(height: Dimensions.height45 * 2)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}