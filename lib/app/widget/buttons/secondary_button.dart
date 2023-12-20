import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.size,
  });

  final Widget text;
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
          side: BorderSide(
            color: context.colorScheme.secondary,
            width: 1.5,
          ),
        ),
        child: DefaultTextStyle.merge(
          style: TTextStyle.getBodyLarge(
            fontWeight: TFontWeight.bold,
            color: context.colorScheme.secondary,
          ),
          child: text,
        ),
      ),
    );
  }
}
