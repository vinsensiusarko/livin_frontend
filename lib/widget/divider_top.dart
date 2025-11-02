/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:32
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../util/dimensions.dart';

class DividerTop extends StatelessWidget {
  const DividerTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimensions.height10 - 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
          child: Container(
            height: Dimensions.height10 - 8,
            width: Dimensions.width45 * 0.8,
            color: Colors.black.withValues(alpha: 0.68),
          ),
        ),
        SizedBox(height: Dimensions.height10 - 4),
      ],
    );
  }
}