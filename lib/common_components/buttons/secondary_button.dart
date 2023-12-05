import 'package:flutter/material.dart';
import '../../core/config/theme/style/color.dart';
import '../../core/config/theme/style/font_style.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.size,
  });

  final String text;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          elevation: 0,
          shape: const StadiumBorder(),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: TColor.secondary1000,
            width: 1.5,
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              TTextStyle.getBodyLarge(
                fontWeight: TFontWeight.bold,
                color: TColor.secondary1000,
              ),
        ),
      ),
    );
  }
}
