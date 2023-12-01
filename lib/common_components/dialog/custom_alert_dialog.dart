import 'package:flutter/material.dart';
import '../../core/config/theme/style/color.dart';
import '../../core/config/theme/style/font_style.dart';
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

  final String title;
  final String message;
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
      surfaceTintColor: TColor.white,
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
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TTextStyle.getHeadingH5(),
              ),
            ),
            const SizedBox(height: 8.0),
            Flexible(
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
              ),
            ),
            const SizedBox(height: 24.0),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons() {
    final Widget primaryButton = PrimaryButton(
      text: primaryActionText,
      textStyle: TTextStyle.getBodySmall(
        fontWeight: TFontWeight.bold,
        color: TColor.white,
      ),
      onPressed: onPrimaryAction,
    );

    final Widget secondaryButton = SecondaryButton(
      text: secondaryActionText,
      textStyle: TTextStyle.getBodySmall(
        fontWeight: TFontWeight.bold,
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
