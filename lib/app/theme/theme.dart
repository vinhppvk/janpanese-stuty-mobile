import 'package:flutter/material.dart';
import '../asset/font_asset.dart';
import 'custom_themes/check_box.dart';
import 'custom_themes/color_scheme.dart';
import 'custom_themes/divider.dart';
import 'custom_themes/drop_down_menu.dart';
import 'custom_themes/elevated_button.dart';
import 'custom_themes/input_decoration.dart';
import 'custom_themes/text_button.dart';
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
    textButtonTheme: TTextButton.lightTheme,
    inputDecorationTheme: TInputDecoration.lightTheme,
    dividerTheme: TDivider.lightTheme,
    dividerColor: TColor.grey200,
    dropdownMenuTheme: TDropDownMenu.lightTheme,
    checkboxTheme: TCheckbox.lightTheme,
    shadowColor: TColor.grey300,
  );
}
