import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';



class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    this.title,
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
  final String? title;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

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
        ),
      ],
    );
  }
}
