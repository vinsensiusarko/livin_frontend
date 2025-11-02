/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 18/05/2025, 21:16
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:intl/intl.dart';

String formatTime(String utcDateTimeString) {
  final dateTime = DateTime.parse(utcDateTimeString);
  final localTime = dateTime.toLocal();
  final formattedTime = DateFormat('HH.mm').format(localTime);
  return formattedTime;
}