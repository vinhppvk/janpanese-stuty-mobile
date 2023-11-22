import 'package:flutter/material.dart';
import '../style/color.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: TColor.primary1000,
      foregroundColor: TColor.white,
    ),
  );
}
