/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 10:03
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../../util/dimensions.dart';

class BackgroundMain extends StatelessWidget {
  final Widget? child;
  const BackgroundMain({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff47bfdf),
                Color(0xff4a91ff)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
        ),
        Positioned(
          top: 120,
          child: Image.asset('assets/vector/left-vector.png')
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            'assets/vector/right-vector.png',
            width: Dimensions.width10 * 20,
          ),
        ),
        child!
      ],
    );
  }
}