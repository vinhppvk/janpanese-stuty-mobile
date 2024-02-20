import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';

class NormalTextField extends StatelessWidget {
  const NormalTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.icon,
    this.onChanged,
    this.validator,
    this.readOnly = false,
    this.onTap,
    this.keyboardType,
    this.onTapOutside,
    this.errorText,
    this.errorStyle,
    this.forceError = false,
    this.showErrorText = true,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? icon;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final void Function(PointerDownEvent)? onTapOutside;
  final String? errorText;
  final TextStyle? errorStyle;
  final bool forceError;
  final bool showErrorText;

  @override
  Widget build(BuildContext context) {
    final String? setErrorText = forceError ? '' : errorText;
    TextStyle? setErrorStyle = errorStyle;
    if (!showErrorText) {
      setErrorStyle = const TextStyle(height: 0.01);
    }

    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onChanged: onChanged,
      onTap: onTap,
      onTapOutside: onTapOutside,
      validator: validator,
      keyboardType: keyboardType,
      style: TTextStyle.getBodyMedium(),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: setErrorText,
        errorStyle: setErrorStyle,
        prefixIconConstraints: const BoxConstraints(
          maxWidth: 72.0,
          maxHeight: 56.0,
        ),
        prefixIcon: icon != null
            ? Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 8.0, top: 16.0, bottom: 16.0),
                child: IntrinsicWidth(child: icon),
              )
            : null,
      ),
    );
  }
}
