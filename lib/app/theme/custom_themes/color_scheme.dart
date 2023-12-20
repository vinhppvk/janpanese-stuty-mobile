import 'package:flutter/material.dart';
import '../style/color.dart';

class TColorScheme {
  TColorScheme._();

  static ColorScheme lightTheme = const ColorScheme.light(
    primary: TColor.primary1000,
    secondary: TColor.secondary1000,
    error: TColor.error1000,
    outline: TColor.grey200,
    outlineVariant: TColor.grey300,
    surfaceTint: TColor.grey900,
    inverseSurface: TColor.grey50,
    onInverseSurface: TColor.grey400,
    shadow: TColor.grey300,
  );
}
