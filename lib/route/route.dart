/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:28
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:get/get.dart';
import 'package:livin_frontend/screen/main/bottom_navigation_screen.dart';

import '../screen/auth/login_screen.dart';
import '../screen/detail/balance_detail_screen.dart';
import '../screen/feature/search_transaction_screen.dart';
import '../screen/onboarding/onboarding_screen.dart';
import '../screen/splash/splash_screen.dart';

class Routes {
  /// Main Initial
  static const String splashScreen = "/";
  static const String onBoardingScreen = "/onboarding-screen";
  static const String loginScreen = "/login-screen";
  static const String mainScreen = "/main-screen";
  static const String balanceDetailScreen = "/balance-detail-screen";
  static const String searchTransactionScreen = "/search-transaction-screen";
  // static const String noInternetScreen = "/no-internet-screen";

  /// Initial Main Routes
  static String getSplashScreen () => splashScreen;
  static String getOnboardingScreen () => onBoardingScreen;
  static String getLoginScreen () => loginScreen;
  static String getMainScreen () => mainScreen;
  static String getBalanceDetailScreen() => balanceDetailScreen;
  static String getSearchTransactionScreen() => searchTransactionScreen;
  // static String getNoInternetScreen () => noInternetScreen;

  static List<GetPage> routes = [
    /// Main Routes
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onBoardingScreen, page: () => const OnboardingScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: mainScreen, page: () => const BottomNavigationScreen(), transition: Transition.downToUp, transitionDuration: Duration(milliseconds: 80)),
    GetPage(name: balanceDetailScreen, page: () => const BalanceDetailScreen()),
    GetPage(name: searchTransactionScreen, page: () => const SearchTransactionScreen()),
    /*GetPage(name: mapScreen, page: () {
      final Map<String, dynamic> argument = Get.arguments;
      return MapScreen(
        latitude: argument['latitude'],
        longitude: argument['longitude'],
      );
    }),*/
    // GetPage(name: noInternetScreen, page: () => const NoInternetScreen()),
  ];
}