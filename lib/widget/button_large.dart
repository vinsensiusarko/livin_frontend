/*
 * Created by Vinsensius Arko on 25/05/2025, 00:47
 * vinsensiusarka@gmail.com
 * Last modified 25/05/2025, 00:47
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:livin_frontend/util/dimensions.dart';

class ButtonLarge extends StatelessWidget {
  final VoidCallback onTap;
  final Widget? icon;
  final String? label;
  final double? labelFontSize;
  final Color? color;
  final Color? textColor;
  const ButtonLarge({super.key, required this.onTap, this.icon, this.label = 'Title', this.labelFontSize, this.color = Colors.blue, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Dimensions.height30 + 8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(Dimensions.radius20)
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)...[
                icon!,
                SizedBox(width: Dimensions.width10 - 4),
              ],
              Text(
                label!,
                style: TextStyle(
                  color: textColor,
                  fontSize: labelFontSize ?? Dimensions.font14,
                  fontWeight: FontWeight.bold
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
