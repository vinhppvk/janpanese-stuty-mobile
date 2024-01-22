import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';
import '../buttons/secondary_button.dart';

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
      surfaceTintColor: context.colorScheme.onPrimary,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Image From',
                style: TTextStyle.getBodyXLarge(
                  fontWeight: TFontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Wrap(
              runSpacing: 16.0,
              children: actions
                  .map(
                    (OptionAction action) => SecondaryButton.icon(
                      icon: action.icon,
                      label: Expanded(
                        child: Text(action.text),
                      ),
                      onPressed: action.onPressed,
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 24.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => context.pop(),
                child: Text(
                  'Cancel',
                  style: TTextStyle.getBodyLarge(
                    fontWeight: TFontWeight.bold,
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OptionAction {
  OptionAction(
      {required this.text, required this.icon, required this.onPressed});

  final String text;
  final Widget icon;
  final VoidCallback? onPressed;
}

