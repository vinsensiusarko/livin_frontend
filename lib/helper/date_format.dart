/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 20/05/2025, 08:35
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'package:intl/intl.dart';

List<String> months = [
  "Januari",
  "Februari",
  "Maret",
  "April",
  "Mei",
  "Juni",
  "Juli",
  "Agustus",
  "September",
  "Oktober",
  "November",
  "Desember",
];

String indonesiaDate(String dateString) {
  try {
    DateTime dateObj = DateFormat('yyyy-MM-dd').parse(dateString);
    return '${dateObj.day} ${months.elementAt(dateObj.month - 1)} ${dateObj.year}';
  } catch (e) {
    return dateString;
  }
}