/*
 * Created by Vinsensius Arko on 26/05/2025, 16:14
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 16:14
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../../../../model/application_model.dart';
import '../../../../../util/dimensions.dart';

class EwaletComponent extends StatelessWidget {
  const EwaletComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: Dimensions.height45,
          width: Dimensions.screenWidth,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width10
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'e-Wallet',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.font16,
                  fontWeight: FontWeight.bold
                ),
              ),
              Row(
                mainAxisSize:
                MainAxisSize.min,
                children: [
                  Text(
                    'Edit',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: Dimensions.font14 + 1,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: Dimensions.width10 - 5),
                  Icon(
                    Icons.edit_note,
                    color: Colors.blue,
                    size: Dimensions.radius15,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: Dimensions.height20 * 8,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width10
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: Dimensions.screenWidth,
                color: Colors.white,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 50,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: ewaletList.length,
                  itemBuilder: (context, index) {
                    final item = ewaletList.elementAt(index);
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        width: Dimensions.width20 * 4,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width10
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius12 - 2),
                          border: Border.all(
                            color: Colors.grey.withValues(alpha: 0.5),
                            strokeAlign: 1
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              item.icon,
                              size: Dimensions.radius20,
                              color: item.color,
                            ),
                            Text(
                              'Rp ${item.amount}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: Dimensions.font14,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: Dimensions.height10),
              Container(
                height: Dimensions.height45,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  border: Border.all(
                    color: Colors.grey.withValues(alpha: 0.5),
                    strokeAlign: 1
                  )
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimensions.radius10 - 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius12 - 8),
                        border: Border.all(
                          color: Colors.blueAccent,
                          strokeAlign: 1,
                          width: 2
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: Dimensions.radius12,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.padding_rounded,
                            color: Colors.blue,
                            size: Dimensions.radius30 + 10,
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: Dimensions.height30),
      ],
    );
  }
}
