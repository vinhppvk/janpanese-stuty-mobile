import 'package:flutter/material.dart';

import '../theme/style/color.dart';
import '../theme/style/font_style.dart';
import 'buttons/primary_button.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    this.padding = const EdgeInsets.all(24.0),
    required this.assetImage,
    this.title,
    required this.message,
    this.buttonText,
    this.onButtonPressed,
  });

  final EdgeInsets padding;
  final String assetImage;
  final Widget? title;
  final Widget message;
  final Widget? buttonText;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    Widget? titleWidget;
    if (title != null) {
      titleWidget = DefaultTextStyle.merge(
        style: TTextStyle.getHeadingH4(color: TColor.grey900),
        child: title!,
      );
    }

    final bool isMessagePrimary = title == null;
    final Widget messageWidget = DefaultTextStyle.merge(
      style: TTextStyle.getBodyLarge(
          color: isMessagePrimary ? TColor.grey600 : TColor.grey500),
      child: message,
    );

    Widget? buttonWidget;
    if (onButtonPressed != null) {
      buttonWidget = PrimaryButton(
        onPressed: onButtonPressed,
        size: const Size(240.0, 48.0),
        child: buttonText ?? const Text('Button'),
      );
    }

    final Widget emptyView = Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(assetImage),
          if (titleWidget != null)
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: titleWidget,
            ),
          const SizedBox(height: 8.0),
          messageWidget,
          if (buttonWidget != null)
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: buttonWidget,
            ),
        ],
      ),
    );

    return emptyView;
  }
}
