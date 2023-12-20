import 'package:flutter/material.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';

class LabelDivider extends StatelessWidget {
  const LabelDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            height: 1.5,
            thickness: 1.5,
            endIndent: 8.0,
            color: TColor.grey500,
          ),
        ),
        Text(
          text,
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.medium,
            color: TColor.grey500,
          ),
        ),
        const Expanded(
          child: Divider(
            height: 1.5,
            thickness: 1.5,
            indent: 8.0,
            color: TColor.grey500,
          ),
        ),
      ],
    );
  }
}
