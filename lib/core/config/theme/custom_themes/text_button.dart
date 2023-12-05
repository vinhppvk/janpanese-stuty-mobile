import 'package:flutter/material.dart';

class TTextButton {
  const TTextButton._();

  static TextButtonThemeData lightTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12.0),
    ),
  );
}
