import 'package:flutter/material.dart';

import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';

class ThirdPartyButton extends StatelessWidget {
  const ThirdPartyButton({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  final String text;
  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
        elevation: 0,
        padding: const EdgeInsets.all(16.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        side: BorderSide(
          color: context.colorScheme.outline,
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          const SizedBox(width: 16.0),
          Text(
            text,
            style: TTextStyle.getBodyLarge(
              fontWeight: TFontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
