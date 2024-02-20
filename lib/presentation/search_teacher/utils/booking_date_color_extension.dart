import 'package:flutter/material.dart';

import '../../../app/theme/style/color.dart';
import '../../../data/model/entity/enum/booking_date.dart';

extension BookingDateColorX on BookingDate {
  Color get normalTintColor => switch (this) {
        BookingDate.weekday => TColor.grey700,
        BookingDate.saturday => TColor.secondary1000,
        BookingDate.sunday => TColor.error1000,
      };

  Color get selectedTintColor => switch (this) {
        BookingDate.weekday => TColor.primary1000,
        BookingDate.saturday => TColor.secondary1000,
        BookingDate.sunday => TColor.error1000,
      };

  Color get backgroundColor => switch (this) {
        BookingDate.weekday => TColor.primary100,
        BookingDate.saturday => TColor.secondary100,
        BookingDate.sunday => TColor.error100,
      };

  Color get borderColor => switch (this) {
        BookingDate.weekday => TColor.primary500,
        BookingDate.saturday => TColor.secondary500,
        BookingDate.sunday => TColor.error500,
      };
}
