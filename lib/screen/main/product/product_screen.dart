/*
 * Created by Vinsensius Arko on 24/05/2025, 12:20
 * vinsensiusarka@gmail.com
 * Last modified 24/05/2025, 12:20
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'Product Screen'
        ),
      ),
    );
  }
}

