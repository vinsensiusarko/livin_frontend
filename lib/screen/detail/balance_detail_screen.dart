/*
 * Created by Vinsensius Arko on 22/05/2025, 13:13
 * vinsensiusarka@gmail.com
 * Last modified 22/05/2025, 13:13
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/detail/balance_detail_controller.dart';
import '../../model/application_model.dart';
import '../../model/transaction_model.dart';
import '../../route/route.dart';
import '../../util/dimensions.dart';
import '../../widget/divider_top.dart';
import '../main/component/background_main.dart';

class BalanceDetailScreen extends StatelessWidget {
  const BalanceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BalanceDetailController>(
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        BackgroundMain(
                          child: Positioned(
                            top: Dimensions.height10 + 25,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        showAdaptiveAboutDialog(context: context);
                                      },
                                      icon: Icon(
                                        Icons.info_outline,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.settings_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: Dimensions.height10 + 40,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/visa-mandiri.png',
                                height: Dimensions.height10 * 4,
                              ),
                              Text(
                                'Vinsensius Arko',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.font15 + 2,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '1380022162000',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.font15 - 1,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width10 - 4),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.file_copy,
                                      color: Colors.white,
                                      size: Dimensions.radius15 - 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Dimensions.height20),
                              Text(
                                'Rp 856.458.154',
                                style: TextStyle(
                                  letterSpacing: -0.5,
                                  color: Colors.white,
                                  fontSize: Dimensions.font20 + 4,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hold Amount',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.font14 - 1,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.width10),
                                  Text(
                                    'Rp 0',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.font14 - 1,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Dimensions.height10),
                              SizedBox(
                                height: Dimensions.screenHeight / 6,
                                width: Dimensions.screenWidth,
                                child: GridView.builder(
                                  padding: EdgeInsets.all(Dimensions.radius20),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisExtent: 100,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(Dimensions.radius12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: Dimensions.radius30 + 20,
                                            width: Dimensions.radius30 + 20,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white
                                            ),
                                            child: Icon(
                                              iconList[index],
                                              size: Dimensions.radius30 - 6,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          SizedBox(height: Dimensions.height10 - 6),
                                          Expanded(
                                            child: Text(
                                              labelList[index],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: Dimensions.font12
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    DraggableScrollableSheet(
                      controller: controller.sheetController,
                      snap: true,
                      snapSizes: [0.5, 0.95],
                      snapAnimationDuration: Duration(milliseconds: 100),
                      minChildSize: 0.5,
                      maxChildSize: 0.95,
                      expand: true,
                      builder: (context, scrollController) {
                        return Container(
                          padding: EdgeInsets.only(
                            top: 10
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius20 - 6),
                              topRight: Radius.circular(Dimensions.radius20 - 6),
                            ),
                          ),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                controller: scrollController,
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (controller.sheetController.size == controller.maxSheetSize) {
                                          /// If already expanded, collapse to initial size
                                          controller.sheetController.animateTo(
                                            controller.initialSheetSize,
                                            duration: const Duration(milliseconds: 100),
                                            curve: Curves.easeOut,
                                          );
                                        } else {
                                          /// If not expanded, expand to max size
                                          controller.sheetController.animateTo(
                                            controller.maxSheetSize,
                                            duration: const Duration(milliseconds: 100),
                                            curve: Curves.easeIn,
                                          );
                                        }
                                      },
                                      child: DividerTop(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: Dimensions.width10 + 2),
                                          child: Text(
                                            'Transactions',
                                            style: TextStyle(
                                              fontSize: Dimensions.font16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: Dimensions.width10 + 2),
                                          child: Text(
                                            'e-Statement',
                                            style: TextStyle(
                                              fontSize: Dimensions.font12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.blue
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: TabBar(
                                            controller: controller.tabController,
                                            isScrollable: true,
                                            physics: ScrollPhysics(
                                              parent: NeverScrollableScrollPhysics()
                                            ),
                                            indicatorWeight: 3,
                                            indicatorColor: Colors.blue,
                                            indicatorSize: TabBarIndicatorSize.tab,
                                            tabAlignment: TabAlignment.center,
                                            labelColor: Colors.blue,
                                            labelStyle: TextStyle(
                                              fontSize: Dimensions.font14,
                                              fontWeight: FontWeight.w500
                                            ),
                                            unselectedLabelColor: Colors.black,
                                            tabs: [
                                              Tab(
                                                text: 'January',
                                              ),
                                              Tab(
                                                text: 'February',
                                              ),
                                              Tab(
                                                text: 'March',
                                              ),
                                              Tab(
                                                text: 'April',
                                              ),
                                              Tab(
                                                text: 'May',
                                              ),
                                              Tab(
                                                text: 'June',
                                              ),
                                              Tab(
                                                text: 'July',
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 0,
                                          child: TabBar(
                                            controller: controller.searchTabController,
                                            isScrollable: false,
                                            tabAlignment: TabAlignment.center,
                                            indicatorPadding: EdgeInsets.zero,
                                            indicatorColor: Colors.transparent,
                                            unselectedLabelColor: Colors.transparent,
                                            tabs: [
                                              Tab(
                                                icon: Row(
                                                  children: [
                                                    VerticalDivider(
                                                      color: Colors.grey.withValues(alpha: 0.2),
                                                      thickness: 1,
                                                      indent: 5,
                                                      endIndent: 5,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(Routes.getSearchTransactionScreen());
                                                      },
                                                      child: Icon(
                                                        Icons.search,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: controller.tabController,
                                  children: [
                                    Center(child: Text('No Transaction', style: TextStyle(fontSize: Dimensions.font15, fontWeight: FontWeight.bold))),
                                    Center(child: Text('No Transaction', style: TextStyle(fontSize: Dimensions.font15, fontWeight: FontWeight.bold))),
                                    Center(child: Text('No Transaction', style: TextStyle(fontSize: Dimensions.font15, fontWeight: FontWeight.bold))),
                                    Center(child: Text('No Transaction', style: TextStyle(fontSize: Dimensions.font15, fontWeight: FontWeight.bold))),
                                    Center(child: Text('No Transaction', style: TextStyle(fontSize: Dimensions.font15, fontWeight: FontWeight.bold))),
                                    Center(child: Text('No Transaction', style: TextStyle(fontSize: Dimensions.font15, fontWeight: FontWeight.bold))),
                                    NotificationListener<OverscrollIndicatorNotification>(
                                      onNotification: (scrollNotification) {
                                        if (scrollNotification.leading == false) {
                                          controller.sheetController.animateTo(
                                            controller.maxSheetSize,
                                            duration: const Duration(milliseconds: 100),
                                            curve: Curves.easeIn,
                                          );
                                        }
                                        return true;
                                      },
                                      child: ListView.builder(
                                        itemCount: listTransaction.length,
                                        itemBuilder: (context, index) {
                                          final transaction = listTransaction.elementAt(index);
                                          return ListTile(
                                            titleAlignment: ListTileTitleAlignment.top,
                                            leading: Icon(
                                              transaction.icon,
                                              color: Colors.blue,
                                            ),
                                            title: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'IDR Transfer',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                Text(
                                                  '+ ${transaction.amount}',
                                                  style: TextStyle(
                                                    color: CupertinoColors.activeGreen,
                                                    fontSize: Dimensions.font15,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ],
                                            ),
                                            subtitle: Text(
                                              'Transfer antar Mandiri\nDari CORNELIA VANES PRADITA\n19283662727122\nTransfer Fee 2321321873121',
                                              style: TextStyle(
                                                fontSize: Dimensions.font12 - 1
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}