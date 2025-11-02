/*
 * Created by Vinsensius Arko on 23/05/2025, 03:15
 * vinsensiusarka@gmail.com
 * Last modified 23/05/2025, 03:15
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/helper/console_print.dart';
import 'package:livin_frontend/widget/button_large.dart';

import '../../controller/feature/search_transaction_controller.dart';
import '../../util/dimensions.dart';

class SearchTransactionScreen extends StatelessWidget {
  const SearchTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchTransactionController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Filter',
              style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: Dimensions.height45,
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Dimensions.width30 * 4.4,
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(Dimensions.radius12),
                        ),
                      ),
                      Container(
                        width: Dimensions.width30 * 4.4,
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(Dimensions.radius12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(bottom: Dimensions.height20),
            child: ButtonLarge(
              onTap: () {
                objectPrint('Test Bwuoos');
              },
              label: 'Apply',
            ),
          ),
        );
      },
    );
  }
}
