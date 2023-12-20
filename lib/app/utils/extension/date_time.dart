import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../app/utils/constant/date_formats.dart';

extension DateTimeFormatting on DateTime {
  String format({String pattern = DateFormats.standard}) {
    return DateFormat(pattern).format(this);
  }
}

extension StringToDateTime on String {
  DateTime? parseToDate({String pattern = DateFormats.standard}) {
    try {
      return DateFormat(pattern).parse(pattern);
    } catch (e) {
      // Handle or throw the error
      debugPrint('Error parsing date: $e');
      return null;
    }
  }
}

extension SecondsToMinuteFormat on int {
  /// Converts seconds to a minute format (MM:SS).
  String toMinuteFormat() {
    final int minutes = this ~/ 60;
    final int seconds = this % 60;

    // Formatting to ensure two digits
    final String formattedMinutes = minutes.toString().padLeft(2, '0');
    final String formattedSeconds = seconds.toString().padLeft(2, '0');

    return '$formattedMinutes:$formattedSeconds';
  }
}
