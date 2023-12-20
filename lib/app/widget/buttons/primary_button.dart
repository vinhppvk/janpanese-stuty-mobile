import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.size,
    this.backgroundColor,
  });

  factory PrimaryButton.outline({
    required Widget text,
    required VoidCallback? onPressed,
    Size? size,
    Color? backgroundColor,
  }) =>
      PrimaryButton(
        text: text,
        onPressed: onPressed,
        size: size,
        backgroundColor: backgroundColor,
      );

  final Widget text;
  final VoidCallback? onPressed;
  final Size? size;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          elevation: 0,
          shape: const StadiumBorder(),
        ),
        child: DefaultTextStyle.merge(
          style: TTextStyle.getBodyLarge(
            fontWeight: TFontWeight.bold,
            color: context.colorScheme.onPrimary
          ),
          child: text,
        ),
      ),
    );
  }
}
