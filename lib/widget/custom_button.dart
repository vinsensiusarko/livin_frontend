/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:32
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../util/dimensions.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final IconData? icon;
  final String? label;
  final double? fontSize;
  const CustomButton({super.key, this.onPressed, this.icon, this.label, this.fontSize, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 50,
        width: width ?? 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.4),
              offset: Offset(-1, 2)
            ),
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.4),
              offset: Offset(1, 2),
            ),
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.4),
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label ?? 'Button',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.8),
                fontSize: Dimensions.font14,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (icon != null)...{
              SizedBox(width: Dimensions.width10 - 6),
              Icon(
                icon,
                color: Colors.black.withValues(alpha: 0.8),
                size: Dimensions.radius12,
              )
            }
          ],
        ),
      ),
    );
  }
}
