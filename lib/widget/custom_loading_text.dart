/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 18/05/2025, 05:56
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:flutter/material.dart';

class CustomLoadingText extends StatefulWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomLoadingText({super.key, this.text, this.fontSize, this.fontWeight});

  @override
  State<CustomLoadingText> createState() => _CustomLoadingTextState();
}

class _CustomLoadingTextState extends State<CustomLoadingText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _dotAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat();

    _dotAnimation = IntTween(begin: 1, end: 3).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _dotAnimation,
      builder: (context, child) {
        String dots = '.' * _dotAnimation.value;
        return Text(
          '${widget.text}$dots',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight ?? FontWeight.normal,
          ),
        );
      },
    );
  }
}