import 'package:flutter/material.dart';

import '../../theme/style/color.dart';
import '../../theme/style/font_style.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.size,
    required this.onPressed,
    required this.child,
  });

  factory SecondaryButton.icon({
    required Widget icon,
    required Widget label,
    required VoidCallback? onPressed,
  }) =>
      SecondaryButton(
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

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          elevation: 0,
          shape: const StadiumBorder(),
          backgroundColor: Colors.transparent,
          side: const BorderSide(
            color: TColor.grey300,
            width: 1.5,
          ),
        ),
        child: DefaultTextStyle.merge(
          style: TTextStyle.getBodyLarge(
            fontWeight: TFontWeight.bold,
            color: TColor.secondary750,
          ),
          child: child,
        ),
      ),
    );
  }
}
