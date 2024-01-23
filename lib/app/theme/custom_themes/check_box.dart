import 'package:flutter/material.dart';

import '../style/color.dart';

class TCheckbox {
  const TCheckbox._();

  static CheckboxThemeData lightTheme = CheckboxThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    visualDensity: VisualDensity.compact,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(2.0),
    ),
    side: const BorderSide(
      color: TColor.grey200,
    ),
  );
}
