/*
 * Created by Vinsensius Arko on 26/05/2025, 17:02
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 17:02
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../../../../util/dimensions.dart';

class EcommerceComponent extends StatelessWidget {
  const EcommerceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          width: Dimensions.screenWidth,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width10
          ),
          child: Text(
            'Pay Popular e-Commerce & Ticket',
            style: TextStyle(
              color: Colors.black,
              fontSize: Dimensions.font16,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(height: Dimensions.height10),
        /*Container(
          width: Dimensions.height45 * 2,
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.height10 + 4,
            horizontal: Dimensions.width10
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.radius12),
            border: Border.all(
              color: Colors.grey.withValues(alpha: 0.5),
              strokeAlign: 1
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(Dimensions.radius10 - 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  shape: BoxShape.circle
                ),
                child: Image.asset(
                  'assets/logo/logo-app.png',
                  fit: BoxFit.contain,
                  width: 40,
                ),
              ),
              SizedBox(height: Dimensions.height10 - 8),
              Text(
                'Shopee Indonesia',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.font12,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: Dimensions.height10 - 2),
              Container(
                height: Dimensions.height20 + 4,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width10
                ),
                child: ButtonLarge(
                  onTap: () {},
                  label: 'Bayar',
                  labelFontSize: Dimensions.font12,
                ),
              )
            ],
          ),
        )*/
      ],
    );
  }
}
