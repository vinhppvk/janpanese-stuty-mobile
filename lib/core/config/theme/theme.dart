import 'package:flutter/material.dart';
import '../asset/font_asset.dart';
import 'custom_themes/color_scheme.dart';
import 'custom_themes/elevated_button.dart';
import 'style/color.dart';

class TTheme {
  TTheme._();

  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: FontAsset.inter,
    useMaterial3: true,
    primaryColor: TColor.primary1000,
    scaffoldBackgroundColor: TColor.white,
    colorScheme: TColorScheme.lightTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightTheme,
  );
}
