/*
 * Created by Vinsensius Arko on 23/05/2025, 12:51
 * vinsensiusarka@gmail.com
 * Last modified 23/05/2025, 12:51
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  final CarouselSliderController carouselController = CarouselSliderController();
  late TabController tabFavoriteController;
  int carouselIndex = 0;

  final RxInt _tabFavoriteIndex = 0.obs;
  int get tabFavoriteIndex => _tabFavoriteIndex.value;
  set tabFavoriteIndex(int index) => _tabFavoriteIndex.value = index;

  RxBool isSaldoVisible = true.obs;

  final List<String> favoriteTab = [
    '',
    'Transfer',
    'Payment',
    'Top-up',
    'Service'
  ];

  @override
  void onInit() {
    tabFavoriteController = TabController(length: 5, vsync: this, animationDuration: Duration.zero);
    tabFavoriteController.animation?.addListener(() {
      int newIndex = tabFavoriteController.animation!.value.round();
      if (newIndex != _tabFavoriteIndex.value) {
        _tabFavoriteIndex.value = newIndex;
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    tabFavoriteController.dispose();
    super.onClose();
  }

  void toggleSaldo() {
    isSaldoVisible.value = !isSaldoVisible.value;
    update();
  }

  void carouselOnChanged(int index) {
    carouselIndex = index;
    update();
  }

  void tabFavoriteOnChanged(int index) {
    _tabFavoriteIndex.value = index;
    update();
  }
}