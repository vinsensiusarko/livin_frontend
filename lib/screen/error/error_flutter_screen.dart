/*
 * Created by Vinsensius Arko on 17/03/2025, 12:51
 * vinsensiusarka@gmail.com
 * Last modified 26/02/2025, 11:58
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

import '../../util/dimensions.dart';

void flutterErrorScreen() {
  ErrorWidget.builder = (FlutterErrorDetails details) => ErrorFlutterScreen(errorDetails: details);
}

class ErrorFlutterScreen extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  const ErrorFlutterScreen({super.key, required this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: ListView(
          clipBehavior: Clip.none,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width10
          ),
          physics: const ClampingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()
          ),
          children: [
            SizedBox(height: Dimensions.height45),
            CircleAvatar(
              radius: (Dimensions.radius30 * 3) + 2,
              backgroundColor: Colors.blue.withValues(alpha: 0.8),
              child: CircleAvatar(
                radius: Dimensions.radius30 * 3,
                backgroundImage: const AssetImage('assets/images/hehe-boi.jpg'),
              ),
            ),
            SizedBox(height: Dimensions.height10 - 5),
            Text(
              '🐊 🦅 Error Maning Boss 🐧 🦖',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: Dimensions.font20
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Center(
              child: Text(
                errorDetails.exceptionAsString(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.font14
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


