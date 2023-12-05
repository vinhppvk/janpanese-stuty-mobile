import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/theme/style/color.dart';
import '../../config/theme/style/font_style.dart';
import '../enum/snackbar_mode.dart';

void showCustomSnackBar(
  BuildContext context, {
  required String message,
  Widget? icon,
  SnackBarMode mode = SnackBarMode.information,
}) {
  final Widget leadingIcon = icon ?? SvgPicture.asset(mode.iconAsset);
  
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: leadingIcon,
          ),
          Expanded(
            child: Text(
              message,
              style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
            ),
          ),
        ],
      ),
      backgroundColor: TColor.white,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      elevation: 6.0,
      duration: const Duration(seconds: 3),
    ),
  );
}
