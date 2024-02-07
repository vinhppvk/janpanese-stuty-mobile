import 'package:flutter/material.dart';

import '../../../theme/style/color.dart';
import '../../../theme/style/font_style.dart';
import '../../../utils/extension/build_context.dart';

class CourseLevelItem extends StatelessWidget {
  const CourseLevelItem({
    super.key,
    required this.highlight,
    required this.label,
    this.height = 20.0,
    this.borderRadius,
  });

  final bool highlight;
  final Widget label;
  final double height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
        highlight ? TColor.mikadoYellow : TColor.grey400;

    final Color foregroundColor = highlight
        ? context.colorScheme.surfaceTint
        : context.colorScheme.surface;

    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(4.0),
        color: backgroundColor,
      ),
      alignment: Alignment.center,
      child: DefaultTextStyle.merge(
        style: TTextStyle.getBodyXSmall(
          fontWeight: TFontWeight.bold,
          color: foregroundColor,
        ),
        child: label,
      ),
    );
  }
}
