import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.size,
    this.backgroundColor,
    required this.onPressed,
    required this.child,
  });

  factory PrimaryButton.icon({
    required Widget icon,
    required Widget label,
    required VoidCallback? onPressed,
  }) =>
      PrimaryButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: icon,
            ),
            label
          ],
        ),
      );

  final Widget child;
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
          child: child,
        ),
      ),
    );
  }
}
