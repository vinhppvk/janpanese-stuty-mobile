import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/config/theme/style/color.dart';
import '../../core/config/theme/style/font_style.dart';
import '../../core/utils/class/option_action.dart';

class OptionDialog extends StatelessWidget {
  const OptionDialog({
    super.key,
    required this.actions,
  });

  final List<OptionAction> actions;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      insetPadding: const EdgeInsets.all(16.0),
      surfaceTintColor: TColor.white,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Select Image From',
              style: TTextStyle.getBodyXLarge(
                fontWeight: TFontWeight.bold,
              ),
            ),
            const SizedBox(height: 24.0),
            Wrap(
              runSpacing: 16.0,
              children: actions
                  .map((OptionAction action) => _OptionButton(
                        text: action.text,
                        icon: action.icon,
                        onPressed: action.onPressed,
                      ))
                  .toList(),
            ),
            const SizedBox(height: 24.0),
            TextButton(
              onPressed: () => context.pop(),
              child: Text(
                'Cancel',
                style: TTextStyle.getBodyLarge(
                  fontWeight: TFontWeight.bold,
                  color: TColor.primary1000,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _OptionButton extends StatelessWidget {
  const _OptionButton({
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
        side: const BorderSide(
          color: TColor.grey200,
          width: 1.5,
        ),
        backgroundColor: TColor.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TTextStyle.getBodyLarge(
                fontWeight: TFontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
