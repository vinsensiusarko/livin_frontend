/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:32
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../util/dimensions.dart';

class CustomTileNotification extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  final String? time;
  final String? message;
  final bool isSelected;
  const CustomTileNotification({super.key, this.onTap, this.icon, this.time, this.message, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        tileColor: isSelected ? Color(0x4795e5ff) : Colors.white,
        onTap: () {},
        leading: Icon(
          icon,
          color: isSelected ? Colors.grey.shade800 : Colors.grey.shade600,
        ),
        title: Text(
          time ?? '',
          style: TextStyle(
            color: isSelected ? Colors.grey.shade800 : Colors.grey.shade600,
            fontSize: Dimensions.font12
          ),
        ),
        subtitle: Text(
          message ?? '',
          style: TextStyle(
            color: isSelected ? Colors.grey.shade800 : Colors.grey.shade600,
            fontSize: Dimensions.font14,
            fontWeight: FontWeight.w500
          ),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_down,
          color: isSelected ? Colors.grey.shade800 : Colors.grey.shade600,
        ),
      ),
    );
  }
}
