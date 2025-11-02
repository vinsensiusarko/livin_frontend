/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 09:45
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:get/get.dart';
import 'package:livin_frontend/controller/auth/login_controller.dart';
import 'package:livin_frontend/controller/main/bottom_navigation_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_client.dart';
import '../controller/detail/balance_detail_controller.dart';
import '../controller/feature/search_transaction_controller.dart';
import '../controller/main/home/home_controller.dart';
import '../controller/splash/splash_controller.dart';
import '../helper/shared_pref.dart';
import '../repository/splash/splash_repository.dart';

class AppBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    final sharedPref = await SharedPreferences.getInstance();

    /// Shared Preferences
    Get.put(SharedPreferencesManager(sharedPreferences: sharedPref), permanent: true);

    /// Api
    Get.put(ApiClient(), permanent: true);

    /// Feature
    Get.lazyPut(() => SearchTransactionController(), fenix: true);
    // Get.lazyPut(() => TextHistoryListController(), fenix: true);

    /// Main Repository
    Get.lazyPut(() => SplashRepository(apiClient: Get.find(), sharedPreferencesManager: Get.find()), fenix: true);

    /// Main Controller
    Get.lazyPut(() => SplashController(splashRepository: Get.find()), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => BalanceDetailController(), fenix: true);
    // Get.lazyPut(() => MapSearchController(), fenix: true);
  }
}