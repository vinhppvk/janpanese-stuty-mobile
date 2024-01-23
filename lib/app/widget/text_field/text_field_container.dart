import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    super.key,
    required this.title,
    required this.child,
  });

  final Widget title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DefaultTextStyle.merge(
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.medium,
          ),
          child: title,
        ),
        const SizedBox(height: 8.0),
        child,
      ],
    );
  }
}
