/*
 * Created by Vinsensius Arko on 26/05/2025, 16:01
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 16:01
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/controller/main/home/home_controller.dart';

import '../../../../../route/route.dart';
import '../../../../../util/dimensions.dart';
import '../../../../../widget/circular_loading.dart';

class BalanceCardComponent extends StatelessWidget {
  const BalanceCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          height: Dimensions.height30 * 2.5,
          width: Dimensions.screenWidth,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: Dimensions.height30 * 5,
                  width: Dimensions.screenWidth / 1.1,
                  padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height10,
                    horizontal: Dimensions.width10 - 2
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20 - 6),
                    border: Border.all(
                      color: Colors.grey.withValues(alpha: 0.2)
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        minTileHeight: 0,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width10 - 4
                        ),
                        visualDensity: VisualDensity.compact,
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey.withValues(alpha: 0.4),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                        title: Text(
                          'Hi, Arko',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Dimensions.font14,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        subtitle: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.diamond,
                              color: Colors.grey,
                              size: Dimensions.radius20 - 2,
                            ),
                            SizedBox(width: Dimensions.width10 - 8),
                            Text(
                              'Member Explorer',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: Dimensions.font12 - 1,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            SizedBox(width: Dimensions.width10 - 6),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                              size: Dimensions.radius10,
                            ),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/logo/livin.png',
                                  width: Dimensions.width30,
                                ),
                                SizedBox(width: Dimensions.width10 - 8),
                                Text(
                                  'poin',
                                  style: TextStyle(
                                    color: Colors.black.withValues(alpha: 0.8),
                                    fontSize: Dimensions.font15,
                                    fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                            // SizedBox(height: Dimensions.height10 - 4),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.monetization_on,
                                    color: Colors.orange,
                                    size: Dimensions.radius20 - 6,
                                  ),
                                  Text(
                                    '5000',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Dimensions.font14,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.blue,
                                    size: Dimensions.radius10 - 2,
                                  )
                                ]
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.height10),
                      GestureDetector(
                        onTap: () {
                          Loading.show();
                          Future.delayed(Duration(seconds: 1), () {
                            Loading.dismiss();
                          }).then((_) => Get.toNamed(Routes.getBalanceDetailScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(Dimensions.radius10),
                            border: Border.all(
                              color: Colors.grey.withValues(alpha: 0.2)
                            ),
                          ),
                          padding: EdgeInsets.all(Dimensions.radius10 - 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ListTile(
                                  minTileHeight: 0,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width10 - 4
                                  ),
                                  visualDensity: VisualDensity.compact,
                                  title: Text(
                                    'Vinsensius Arko',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Dimensions.font12,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  subtitle: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      if (controller.isSaldoVisible.value == false)...[
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Rp ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Dimensions.font14 - 1,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              TextSpan(
                                                text: '856.458.154',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Dimensions.font14 - 1,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ]
                                          )
                                        )
                                      ] else...[
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Rp ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Dimensions.font14 - 1,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              TextSpan(
                                                text: '******',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: Dimensions.font14 - 1,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ]
                                          )
                                        )
                                      ],
                                      SizedBox(width: Dimensions.width10 / 2),
                                      GestureDetector(
                                        onTap: () {
                                          controller.toggleSaldo();
                                        },
                                        child: Icon(
                                          controller.isSaldoVisible.value == false ? Icons.visibility : Icons.visibility_off,
                                          color: Colors.blue,
                                          size: Dimensions.radius20 - 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Image.asset(
                                    'assets/images/visa-mandiri.png',
                                    height: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
