/*
 * Created by Vinsensius Arko on 26/05/2025, 15:57
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 15:57
 * Copyright (c) 2025.  
 * All rights reserved.
 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/controller/main/home/home_controller.dart';

import '../../../../../model/information_model.dart';
import '../../../../../util/dimensions.dart';

class HeaderInfoComponent extends StatelessWidget {
  const HeaderInfoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Container(
          height: Dimensions.height30 * 2,
          width: Dimensions.screenWidth,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width10
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: listHeaderInfoModel.asMap().entries.map((entry) {
                  return Column(
                    children: [
                      if (entry.key == controller.carouselIndex)...[
                        Container(
                          height: Dimensions.height20 - 4,
                          width: Dimensions.width10 - 8,
                          margin: EdgeInsets.only(
                              top: Dimensions.height10 - 9,
                              right: Dimensions.width10 - 4
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.radius10),
                              color: Colors.white
                          ),
                        )
                      ] else...[
                        Container(
                          height: Dimensions.width10 - 8,
                          width: Dimensions.width10 - 8,
                          margin: EdgeInsets.only(
                              top: Dimensions.height10 - 9,
                              right: Dimensions.width10 - 4
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withValues(alpha: 0.4)
                          ),
                        )
                      ]
                    ],
                  );
                }).toList(),
              ),
              Expanded(
                child: CarouselSlider(
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 100),
                    autoPlayInterval: Duration(seconds: 6),
                    pauseAutoPlayOnManualNavigate: true,
                    pauseAutoPlayOnTouch: true,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (index, reason) {
                      controller.carouselOnChanged(index);
                    }
                  ),
                  items: listHeaderInfoModel.asMap().entries.map((item) {
                    return Builder(
                      builder: (context) {
                        return SizedBox(
                          width: Dimensions.screenWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.value.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.font15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    item.value.subtitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.font14,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                item.value.icon,
                                color: Colors.white,
                                size: Dimensions.radius30 + 3,
                              )
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
