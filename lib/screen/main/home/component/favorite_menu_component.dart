/*
 * Created by Vinsensius Arko on 26/05/2025, 16:12
 * vinsensiusarka@gmail.com
 * Last modified 26/05/2025, 16:12
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livin_frontend/controller/main/home/home_controller.dart';

import '../../../../model/application_model.dart';
import '../../../../util/dimensions.dart';
import 'category/category_transaction_component.dart';

class FavoriteMenuComponent extends StatelessWidget {
  const FavoriteMenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
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
                    'Your Favorite',
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
                height: Dimensions.height20 * 5,
                width: Dimensions.screenWidth,
                color: Colors.white,
                child: GridView.builder(
                  padding: EdgeInsets.all(Dimensions.radius10 - 2),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisExtent: 100,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: favoriteList.length,
                  itemBuilder: (context, index) {
                    final item = favoriteList.elementAt(index);
                    return InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(Dimensions.radius12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: Dimensions.radius30 + 12,
                            width: Dimensions.radius30 + 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: item.color
                            ),
                            child: Icon(
                              item.icon,
                              size: Dimensions.radius30 - 8,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: Dimensions.height10 - 6),
                          Text(
                            item.label,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Dimensions.font12
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
            ),
            Obx(() {
              return Container(
                height: Dimensions.height20 + 2,
                width: Dimensions.screenWidth,
                color: Colors.white,
                child: Center(
                  child: TabBar(
                    controller: controller.tabFavoriteController,
                    isScrollable: false,
                    indicatorWeight: 2,
                    indicatorColor: Colors.blue,
                    indicatorAnimation: TabIndicatorAnimation.linear,
                    indicator: BoxDecoration(
                        color: Colors.transparent
                    ),
                    tabAlignment: TabAlignment.center,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.symmetric(
                        horizontal: Dimensions.width10 - 5
                    ),
                    labelColor: Colors.blue,
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.font12,
                        fontWeight: FontWeight.w400
                    ),
                    onTap: (index) {
                      controller.tabFavoriteOnChanged(index);
                    },
                    tabs: controller.favoriteTab.map((tabItem) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10 - 2
                        ),
                        decoration: BoxDecoration(
                            color: controller.tabFavoriteIndex == controller.favoriteTab.indexOf(tabItem) ? Colors.blueAccent.withValues(alpha: 0.1) : null,
                            borderRadius: BorderRadius.circular(Dimensions.radius12),
                            border: Border.all(
                                color: controller.tabFavoriteIndex == controller.favoriteTab.indexOf(tabItem) ? Colors.blue : Colors.grey.withValues(alpha: 0.4),
                                strokeAlign: 1
                            )
                        ),
                        child: controller.favoriteTab.indexOf(tabItem) == 0 ? Tab(
                          text: controller.favoriteTab.indexOf(tabItem) == 0 ? null : tabItem,
                          icon: Icon(
                            controller.favoriteTab.indexOf(tabItem) == 0 ? Icons.thumb_up : Icons.thumb_up,
                            color: Colors.blue,
                            size: Dimensions.radius15 - 2,
                          ),
                          iconMargin: EdgeInsets.zero,
                        ) : Tab(
                          text: tabItem,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              );
            }),
            Container(
              height: Dimensions.height20 * 5,
              width: Dimensions.screenWidth,
              color: Colors.white,
              child: TabBarView(
                controller: controller.tabFavoriteController,
                children: controller.favoriteTab.asMap().entries.map((entry) {
                  int index = entry.key;
                  String tabName = entry.value;
                  return CategoryTransactionComponent(id: index, title: tabName);
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
