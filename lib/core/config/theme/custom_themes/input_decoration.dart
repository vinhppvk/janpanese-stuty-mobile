import 'package:flutter/material.dart';

import '../style/color.dart';
import '../style/font_style.dart';

class TInputDecoration {
  const TInputDecoration._();

  static InputDecorationTheme get lightTheme {
    final InputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: TColor.grey200,
        width: 1.5,
      ),
    );

    final InputBorder focusBorder = defaultBorder.copyWith(
      borderSide: defaultBorder.borderSide.copyWith(
        color: TColor.primary1000,
      ),
    );

    final InputBorder errorBorder = defaultBorder.copyWith(
      borderSide: defaultBorder.borderSide.copyWith(
        color: TColor.error1000,
      ),
    );

    return InputDecorationTheme(
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
      enabledBorder: defaultBorder,
      focusedBorder: focusBorder,
      disabledBorder: defaultBorder,
      focusedErrorBorder: errorBorder,
      errorBorder: errorBorder,
    );
  }
}
