import 'package:flutter/material.dart';
import '../style/color.dart';

class TFilledButtonTheme {
  TFilledButtonTheme._();

  static FilledButtonThemeData lightTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: TColor.primary1000,
      foregroundColor: TColor.white,
      disabledForegroundColor: TColor.grey400,
      disabledBackgroundColor: TColor.grey100,
    ),
  );
}
