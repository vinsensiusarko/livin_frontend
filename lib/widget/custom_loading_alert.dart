/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:32
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/dimensions.dart';

class CustomLoadingAlert extends StatefulWidget {
  const CustomLoadingAlert({super.key});

  @override
  State<CustomLoadingAlert> createState() => _CustomLoadingAlertState();
}

class _CustomLoadingAlertState extends State<CustomLoadingAlert> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 10), () {
      Get.back(closeOverlays: true);
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(
        vertical: Dimensions.height15
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius10 + 5))
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Dimensions.height30,
            width: Dimensions.height30,
            child: CircularProgressIndicator(
              color: Color(0xff4a91ff),
            ),
          ),
          SizedBox(width: Dimensions.width20),
          SizedBox(
            child: Text(
              'Loading...',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: Dimensions.font16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


void customLoadingAlert(BuildContext context) {
  showCupertinoDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10
        ),
        child: const PopScope(
          canPop: false,
          child: CustomLoadingAlert(),
        ),
      );
    },
  );
}