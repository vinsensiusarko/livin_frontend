/*
 * Created by Vinsensius Arko on 26/05/2025, 15:45
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 15:45
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../../../../util/dimensions.dart';

class BodyHomeScreen extends StatelessWidget {
  final List<Widget> children;
  const BodyHomeScreen({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20),
          topRight: Radius.circular(Dimensions.radius20)
        ),
        child: ScrollConfiguration(
          behavior: ScrollBehavior()..copyWith(
            overscroll: false
          ),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (scrollNotification) {
              scrollNotification.disallowIndicator();
              return true;
            },
            child: ListView(
              padding: EdgeInsets.zero,
              physics: AlwaysScrollableScrollPhysics(),
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
