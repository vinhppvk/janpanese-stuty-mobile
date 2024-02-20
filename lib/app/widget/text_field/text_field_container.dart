import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    super.key,
    required this.title,
    required this.child,
    this.errorText,
  });

  final Widget title;
  final Widget child;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final Widget titleLabel = DefaultTextStyle.merge(
      style: TTextStyle.getBodyMedium(
        fontWeight: TFontWeight.medium,
      ),
      child: title,
    );

    Widget? errorLabel;
    if (errorText != null) {
      errorLabel = Text(
        errorText!,
        style: TTextStyle.getBodySmall(
          color: context.colorScheme.error,
          fontWeight: TFontWeight.medium,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleLabel,
        const SizedBox(height: 8.0),
        child,
        if (errorLabel != null)
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: errorLabel,
          ),
      ],
    );
  }
}
