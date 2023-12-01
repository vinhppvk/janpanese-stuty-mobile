import 'package:flutter/material.dart';

import '../style/color.dart';
import '../style/font_style.dart';

class TInputDecoration {
  const TInputDecoration._();

  static InputDecorationTheme lightTheme = InputDecorationTheme(
    errorMaxLines: 3,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 12.0,
      horizontal: 16.0,
    ),
    hintStyle: TTextStyle.getBodyMedium(fontWeight: TFontWeight.light),
    labelStyle: TTextStyle.getBodyMedium(),
    helperStyle: TTextStyle.getBodySmall(fontWeight: TFontWeight.medium),
    errorStyle: TTextStyle.getBodySmall(
      fontWeight: TFontWeight.medium,
      color: TColor.error1000,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: TColor.grey200,
        width: 1.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: TColor.primary1000,
        width: 1.5,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: TColor.grey200,
        width: 1.5,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: TColor.error1000,
        width: 1.5,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: TColor.error1000,
        width: 1.5,
      ),
    ),
  );
}
