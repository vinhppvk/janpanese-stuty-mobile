import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.validator,
    this.showObscureButton = true,
    required this.obscureText,
    this.onObscureButtonPressed,
  });

  final bool showObscureButton;
  final bool obscureText;
  final Function(bool obscureText)? onObscureButtonPressed;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      style: TTextStyle.getBodyMedium(),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIconConstraints:
            const BoxConstraints(maxWidth: 48.0, minHeight: 56.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 8.0),
          child: SvgPicture.asset(IconAsset.password),
        ),
        suffixIcon: showObscureButton
            ? Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: IconButton(
                  onPressed: () {
                    onObscureButtonPressed?.call(!obscureText);
                  },
                  icon: SvgPicture.asset(
                      obscureText ? IconAsset.eyeOpen : IconAsset.eyeClose),
                ),
              )
            : null,
      ),
    );
  }
}
