/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:45
 * Copyright (c) 2025.
 * All rights reserved.
 */

import '../../api/api_client.dart';
import '../../helper/shared_pref.dart';

class SplashRepository {
  final ApiClient apiClient;
  final SharedPreferencesManager sharedPreferencesManager;

  SplashRepository({required this.apiClient, required this.sharedPreferencesManager});

  String getToken() {
    String token = sharedPreferencesManager.getString('token') ?? '';
    return token;
  }

  bool showSplash() {
    return sharedPreferencesManager.getBool('intro');
  }

  void setIntro(bool intro) {
    sharedPreferencesManager.putBool('intro', intro);
  }
}