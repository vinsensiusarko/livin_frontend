/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 09:07
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_toast.dart';

class ApiHandler {
  static void checkApi(BuildContext context, Response response) {
    if (response.statusCode == 401) {
      /// Logic Here
      showToast(context, message: 'Please relogin', isError: true);
    } else if (response.statusCode == 404) {
      /// Logic Here
      showToast(context, message: 'Not found', isError: true);
    } else {
      /// Logic Here
      showToast(context, message: response.statusText.toString(), isError: true);
    }
  }
}
