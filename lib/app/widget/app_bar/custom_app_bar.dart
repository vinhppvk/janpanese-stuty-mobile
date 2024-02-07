import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = kToolbarHeight,
    this.padding = EdgeInsets.zero,
    this.color,
    required this.title,
    this.onBackPressed,
    this.leading,
    this.trailing,
  });

  final double height;
  final EdgeInsets padding;
  final Color? color;
  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onBackPressed;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: color ?? context.colorScheme.background,
          border: Border(
            bottom: BorderSide(
              color: context.colorScheme.outline,
              width: 1.5,
            ),
          ),
        ),
        child: Stack(
          children: <Widget>[
            /// Center title
            Positioned.fill(
              child: Center(
                child: DefaultTextStyle.merge(
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.bold),
                  child: title,
                ),
              ),
            ),
            /// Leading and Trailing widget
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  if (leading != null)
                    leading!
                  else
                    _BackButton(onBackPressed: onBackPressed),
                  if (trailing != null) trailing!,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    required this.onBackPressed,
  });

  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onBackPressed,
      padding: EdgeInsets.zero,
      icon: SvgPicture.asset(IconAsset.caretLeft),
    );
  }
}
