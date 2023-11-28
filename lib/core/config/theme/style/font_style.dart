import 'package:flutter/material.dart';
import '../../asset/font_asset.dart';

class TFontSize {
  const TFontSize._();

  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s24 = 24.0;
  static const double s28 = 28.0;
  static const double s40 = 40.0;
  static const double s48 = 48.0;
}

class TFontWeight {
  const TFontWeight._();

  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
}

class TFontHeight {
  const TFontHeight._();

  static const double h160 = 1.6;
  static const double h145 = 1.45;
  static const double h140 = 1.4;
  static const double h135 = 1.35;
  static const double h130 = 1.3;
  static const double h120 = 1.2;
}

class TTextStyle {
  const TTextStyle._();

  static TextStyle _getTextStyle(
    double fontSize,
    FontWeight fontWeight,
    Color color,
    String fontFamily, {
    double? height,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      height: height,
      color: color,
    );
  }

  static TextStyle getBodyLarge({
    FontWeight fontWeight = TFontWeight.regular,
    Color color = Colors.black,
  }) {
    return _getTextStyle(TFontSize.s16, fontWeight, color, FontAsset.inter,
        height: TFontHeight.h145);
  }
}
