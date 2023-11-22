import 'package:flutter/material.dart';
import '../../core/config/theme/style/font_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
        elevation: 0,
        shape: const StadiumBorder(),
      ),
      child: Text(
        text,
        style: TTextStyle.getBodyLarge(
          fontWeight: TFontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
