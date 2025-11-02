/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 18/05/2025, 04:46
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'dart:convert';

import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 8,
    lineLength: 120,
    colors: true,
    printEmojis: true,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);

void jsonPrint(Object? object, [String? title]) {
  if (title != null) {
    logger.d('----$title----\n${JsonEncoder.withIndent('   ').convert(object)}');
  } else {
    logger.d(object);
  }
}

void objectPrint(Object? object) {
  logger.i(object);
}