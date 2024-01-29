import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';

class NormalTextField extends StatelessWidget {
  const NormalTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.readOnly = false,
    this.onTap,
    this.keyboardType,
    this.onTapOutside,
    this.errorText,
    this.obscureText = false,
    this.prefixPadding = const EdgeInsets.only(left: 16.0, right: 8.0),
    this.suffixPadding = const EdgeInsets.only(right: 8.0, left: 16.0),
  });

  factory NormalTextField.password({
    // Default Properties
    TextEditingController? controller,
    String? labelText,
    String? hintText,
    String? errorText,
    bool readOnly = false,
    TextInputType? keyboardType = TextInputType.visiblePassword,
    bool obscureText = false,
    ValueChanged<String>? onChanged,
    String? Function(String?)? validator,
    VoidCallback? onTap,
    void Function(PointerDownEvent)? onTapOutside,
    // New Properties
    bool showObscureButton = true,
    Function(bool obscureText)? onObscureButtonPressed,
  }) =>
      NormalTextField(
        controller: controller,
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        readOnly: readOnly,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: onChanged,
        validator: validator,
        onTap: onTap,
        onTapOutside: onTapOutside,
        prefixIcon: SvgPicture.asset(IconAsset.password),
        suffixPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        suffixIcon: showObscureButton
            ? IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => onObscureButtonPressed?.call(!obscureText),
                icon: SvgPicture.asset(
                    obscureText ? IconAsset.eyeOpen : IconAsset.eyeClose),
              )
            : null,
      );

  // Properties
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final bool readOnly;
  final TextInputType? keyboardType;
  final bool obscureText;
  final EdgeInsets prefixPadding;
  final EdgeInsets suffixPadding;

  // Closures
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  final void Function(PointerDownEvent)? onTapOutside;

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
      obscureText: obscureText,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        prefixIconConstraints: const BoxConstraints(
          maxWidth: 72.0,
          maxHeight: 56.0,
        ),
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 56.0,
          maxHeight: 56.0,
        ),
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: prefixPadding,
                child: prefixIcon,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: suffixPadding,
                child: suffixIcon,
              )
            : null,
      ),
    );
  }
}
