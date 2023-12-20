import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';
import '../buttons/primary_button.dart';
import '../buttons/secondary_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.message,
    this.image,
    this.primaryActionText = 'OK',
    this.secondaryActionText = 'Cancel',
    this.onPrimaryAction,
    this.onSecondaryAction,
  });

  factory CustomAlertDialog.singleBtn({
    required Widget title,
    required Widget message,
    Widget? image,
    String primaryActionText = 'OK',
    required VoidCallback onPrimaryAction,
  }) =>
      CustomAlertDialog(
        title: title,
        message: message,
        image: image,
        primaryActionText: primaryActionText,
        onPrimaryAction: onPrimaryAction,
      );

  factory CustomAlertDialog.dividedBtn({
    required Widget title,
    required Widget message,
    Widget? image,
    String primaryActionText = 'OK',
    String secondaryActionText = 'Cancel',
    required VoidCallback onPrimaryAction,
    required VoidCallback onSecondaryAction,
  }) =>
      CustomAlertDialog(
        title: title,
        message: message,
        image: image,
        primaryActionText: primaryActionText,
        secondaryActionText: secondaryActionText,
        onPrimaryAction: onPrimaryAction,
        onSecondaryAction: onSecondaryAction,
      );

  final Widget title;
  final Widget message;
  final Widget? image;
  final String primaryActionText;
  final String secondaryActionText;
  final VoidCallback? onPrimaryAction;
  final VoidCallback? onSecondaryAction;

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
            if (image != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: image,
              ),
            Flexible(
              child: DefaultTextStyle.merge(
                child: title,
              ),
            ),
            const SizedBox(height: 8.0),
            Flexible(
              child: DefaultTextStyle.merge(
                child: message,
                textAlign: TextAlign.center,
                style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
              ),
            ),
            const SizedBox(height: 24.0),
            _buildButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    final Widget primaryButton = PrimaryButton(
      text: Text(
        primaryActionText,
        style: TTextStyle.getBodySmall(
          fontWeight: TFontWeight.bold,
          color: context.colorScheme.onPrimary,
        ),
      ),
      onPressed: onPrimaryAction,
    );

    final Widget secondaryButton = SecondaryButton(
      text: Text(
        style: TTextStyle.getBodySmall(
          fontWeight: TFontWeight.bold,
          color: context.colorScheme.secondary,
        ),
        secondaryActionText,
      ),
      onPressed: onSecondaryAction,
    );

    if (onSecondaryAction == null) {
      return SizedBox(
        width: 148.0,
        height: 32.0,
        child: primaryButton,
      );
    }

    return SizedBox(
      height: 32.0,
      child: Row(
        children: <Widget>[
          Flexible(child: secondaryButton),
          const SizedBox(width: 16.0),
          Flexible(child: primaryButton),
        ],
      ),
    );
  }
}
