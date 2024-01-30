import 'package:flutter/material.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';

class TeacherDetailEmptyView extends StatelessWidget {
  const TeacherDetailEmptyView({
    super.key,
    required this.assetImage,
    required this.text,
  });

  final String assetImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: <Widget>[
          Image.asset(assetImage),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: TTextStyle.getBodyLarge(
              fontWeight: TFontWeight.medium,
              color: TColor.grey600,
            ),
          )
        ],
      ),
    );
  }
}
