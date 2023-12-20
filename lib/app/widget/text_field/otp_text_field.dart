import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.validator,
    this.pinputAutovalidateMode = PinputAutovalidateMode.disabled,
    this.forceErrorState = false,
    this.errorText,
    this.onTap,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final PinputAutovalidateMode pinputAutovalidateMode;
  final bool forceErrorState;
  final String? errorText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final PinTheme defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TTextStyle.getBodyXLarge(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: context.colorScheme.outline,
          width: 1.5,
        ),
      ),
    );

    return Pinput(
      length: 5,
      controller: controller,
      focusNode: focusNode,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      validator: validator,
      separatorBuilder: (int index) => const SizedBox(width: 16.0),
      pinputAutovalidateMode: pinputAutovalidateMode,
      forceErrorState: forceErrorState,
      errorText: errorText,
      errorBuilder: (String? errorText, String? pin) {
        return Container(
          margin: const EdgeInsets.only(top: 8.0),
          alignment: Alignment.center,
          child: Text(
            errorText.toString(),
            style: TTextStyle.getBodyLarge(
              fontWeight: TFontWeight.medium,
              color: context.colorScheme.error,
            ),
          ),
        );
      },
      onTap: onTap,
      onTapOutside: (PointerDownEvent event) {
        context.focusScope.unfocus();
      },
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(
          color: context.colorScheme.primary,
          width: 1.5,
        ),
      ),
      submittedPinTheme: defaultPinTheme,
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(
          color: context.colorScheme.error,
          width: 1.5,
        ),
      ),
    );
  }
}
