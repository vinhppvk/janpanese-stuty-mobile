import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/color.dart';
import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class BottomSheetAppBar extends StatelessWidget {
  const BottomSheetAppBar({
    super.key,
    required this.title,
    this.closeIcon,
    this.padding = const EdgeInsets.only(left: 24.0, right: 10.0),
    this.toolbarHeight = kToolbarHeight,
    this.onClosePressed,
  });

  final Widget title;
  final Widget? closeIcon;
  final EdgeInsets padding;
  final double toolbarHeight;
  final VoidCallback? onClosePressed;

  @override
  Widget build(BuildContext context) {
    final Widget titleLabel = DefaultTextStyle.merge(
      style: TTextStyle.getBodyLarge(
        fontWeight: TFontWeight.bold,
        color: TColor.grey900,
      ),
      child: title,
    );

    final Widget closeButton = IconButton(
      icon: closeIcon ?? SvgPicture.asset(IconAsset.xSimple),
      onPressed: onClosePressed,
    );

    return Container(
      height: toolbarHeight,
      padding: padding,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.outline,
            width: 1.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: titleLabel,
          ),
          closeButton,
        ],
      ),
    );
  }
}
