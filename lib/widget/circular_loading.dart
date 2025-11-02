/*
 * Created by Vinsensius Arko on 25/05/2025, 08:51
 * vinsensiusarka@gmail.com
 * Last modified 25/05/2025, 08:51
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/util/dimensions.dart';

class Loading {

  static void show() {
    showDialog(
      context: Get.key.currentContext!,
      barrierDismissible: false,
      builder: (context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(Dimensions.radius10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static void dismiss<T extends Object?>([T? result]) {
    Get.key.currentState!.pop(result);
  }
}