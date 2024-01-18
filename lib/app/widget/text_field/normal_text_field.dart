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

  @override
  Widget build(BuildContext context) {
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
        errorText: errorText,
        // contentPadding: EdgeInsets.all(16.0),
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
