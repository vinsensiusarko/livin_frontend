/*
 * Created by Vinsensius Arko on 24/05/2025, 12:20
 * vinsensiusarka@gmail.com
 * Last modified 24/05/2025, 12:20
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

class SukhaScreen extends StatelessWidget {
  const SukhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sukha'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'Sukha Screen'
        ),
      ),
    );
  }
}
