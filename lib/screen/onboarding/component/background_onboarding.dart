/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 09:49
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../../util/dimensions.dart';

class BackgroundOnboarding extends StatelessWidget {
  final Widget? child;
  const BackgroundOnboarding({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff4a9ef7),
                Color(0xffffffff)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
        ),
        Image.asset('assets/images/inner.png'),
        Positioned(
          top: 80,
          child: Image.asset('assets/images/sun-half.png')
        ),
        Positioned(
          top: 380,
          right: 0,
          child: Image.asset(
            'assets/images/cloud.png',
            width: Dimensions.width10 * 24,
          ),
        ),
        child!
      ],
    );
  }
}
