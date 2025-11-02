/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/05/2025, 09:59
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

class BackgroundSplash extends StatelessWidget {
  final Widget? child;
  const BackgroundSplash({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        child!
      ],
    );
  }
}
