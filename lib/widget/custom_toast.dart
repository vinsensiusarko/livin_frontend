/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:32
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../util/dimensions.dart';

Timer? toastTimer;

void showToast(BuildContext context, {required String message, bool? isError, Widget? icon}) {
  int maxLength = 34;
  String truncatedMessage = message.length > maxLength ? "${message.substring(0, maxLength)}..." : message;
  if (toastTimer?.isActive ?? false) {
    return;
  }
  toastTimer = Timer(const Duration(seconds: 3), () {
    toastTimer = null;
  });

  FToast fToast = FToast();
  fToast.init(context);

  Widget toast = Container(
    padding: EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 24
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: isError == true ? Colors.red : isError == false ? Colors.green : Colors.black.withValues(alpha: 0.8),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null) ...[
          icon,
          SizedBox(width: 12),
        ],
        if (icon == null && isError == false) ...[
          Icon(
            Icons.check,
            color: Colors.white,
          ),
          SizedBox(width: 12),
        ],
        if (icon == null && isError == true) ...[
          Icon(
            Icons.close,
            color: Colors.white,
          ),
          SizedBox(width: 12),
        ],
        Text(
          truncatedMessage,
          style: TextStyle(
            fontSize: Dimensions.font14,
            color: Colors.white
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: Duration(seconds: 3),
  );
}
