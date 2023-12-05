import 'package:flutter/material.dart';

import '../../core/config/theme/style/font_style.dart';

class NormalTextField extends StatelessWidget {
  const NormalTextField({
    super.key,
    this.title,
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
  });

  final String? title;
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title!,
              style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
            ),
          ),
        TextFormField(
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
            prefixIconConstraints: const BoxConstraints(
              minHeight: 56.0,
              maxWidth: 72.0,
            ),
            prefixIcon: icon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 8.0, top: 16.0, bottom: 16.0),
                    child: IntrinsicWidth(child: icon),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
