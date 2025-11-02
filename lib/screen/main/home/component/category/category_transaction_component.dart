/*
 * Created by Vinsensius Arko on 23/05/2025, 23:56
 * vinsensiusarka@gmail.com
 * Last modified 23/05/2025, 23:56
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../../../../model/application_model.dart';
import '../../../../../util/dimensions.dart';

class CategoryTransactionComponent extends StatelessWidget {
  final int id;
  final String title;
  const CategoryTransactionComponent({super.key, required this.id, required this.title});

  @override
  Widget build(BuildContext context) {
    if (id == 0) {
      return GridView.builder(
        padding: EdgeInsets.all(Dimensions.radius10 - 2),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: thumbCategoryList.length,
        itemBuilder: (context, index) {
          final item = thumbCategoryList.elementAt(index);
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
      );
    } else if (id == 1) {
      return GridView.builder(
        padding: EdgeInsets.all(Dimensions.radius10 - 2),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: transferCategoryList.length,
        itemBuilder: (context, index) {
          final item = transferCategoryList.elementAt(index);
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
      );
    } else if (id == 2) {
      return GridView.builder(
        padding: EdgeInsets.all(Dimensions.radius10 - 2),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: paymentCategoryList.length,
        itemBuilder: (context, index) {
          final item = paymentCategoryList.elementAt(index);
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
      );
    } else if (id == 3) {
      return GridView.builder(
        padding: EdgeInsets.all(Dimensions.radius10 - 2),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: topupCategoryList.length,
        itemBuilder: (context, index) {
          final item = topupCategoryList.elementAt(index);
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
      );
    } else if (id == 4) {
      return GridView.builder(
        padding: EdgeInsets.all(Dimensions.radius10 - 2),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: serviceCategoryList.length,
        itemBuilder: (context, index) {
          final item = serviceCategoryList.elementAt(index);
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
      );
    } else {
      return Center(
        child: Text(
          "Page $title with $id doesn't exist",
          style: TextStyle(
            color: Colors.black,
            fontSize: Dimensions.font14
          ),
        ),
      );
    }
  }
}
