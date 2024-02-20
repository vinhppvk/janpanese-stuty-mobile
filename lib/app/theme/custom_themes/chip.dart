import 'package:flutter/material.dart';

import '../style/color.dart';
import '../style/font_style.dart';

class TChip {
  const TChip._();

  static ChipThemeData lightTheme = ChipThemeData(
    labelStyle: TTextStyle.getBodyMedium(
      fontWeight: TFontWeight.medium,
      color: TColor.grey700,
      height: null,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      side: BorderSide(
        color: TColor.grey200,
        width: 1.5,
      ),
    ),
  );
}
