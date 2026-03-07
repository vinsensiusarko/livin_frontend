/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:29
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:livin_frontend/helper/shared_pref.dart';
import 'package:livin_frontend/screen/error/error_flutter_screen.dart';

import 'binding/app_binding.dart';
import 'constant/application_constant.dart';
import 'route/route.dart';

void main() async {
  if (kDebugMode) {
    flutterErrorScreen();
  }
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => SharedPreferencesManager().init());
  await GetStorage.init();
  runApp(const LivinApp());
}

class LivinApp extends StatelessWidget {
  const LivinApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MainBinding(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(0.85)),
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
      title: ApplicationConstant.applicationName,
      navigatorKey: Get.key,
      initialRoute: Routes.splashScreen,
      getPages: Routes.routes,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 80),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white
        ),
        dialogTheme: DialogThemeData(
          backgroundColor: Colors.white
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Color(0xff4a9ef7)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          )
        )
      ),
      /// Testing Purpose
      // home: SampleHomeScreen(),
    );
  }
}
