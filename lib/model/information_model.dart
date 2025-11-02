/*
 * Created by Vinsensius Arko on 23/05/2025, 12:17
 * vinsensiusarka@gmail.com
 * Last modified 23/05/2025, 12:17
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderInfoModel {
  final IconData icon;
  final String title;
  final String subtitle;


  HeaderInfoModel({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

final List<HeaderInfoModel> listHeaderInfoModel = [
  HeaderInfoModel(
    icon: Icons.candlestick_chart,
    title: 'Investasi dengan Broker Fee 0%',
    subtitle: 'Yuk mulai Investasi tanpa ragu',
  ),
  HeaderInfoModel(
    icon: CupertinoIcons.creditcard_fill,
    title: 'Bawa idolamu ke Mana-mana!',
    subtitle: 'Miliki e-money Park Seo Jun & Kim Jong Un',
  ),
  HeaderInfoModel(
    icon: Icons.diamond,
    title: 'Dari hape dapet hadiah kece?',
    subtitle: 'Bisa! buruan ikutan & kumpulin Livin poin-nya',
  ),
];