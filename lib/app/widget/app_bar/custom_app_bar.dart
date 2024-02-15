import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = kToolbarHeight,
    this.automaticallyImplyLeading = true,
    this.primary = true,
    this.padding = const EdgeInsets.all(8.0),
    this.color,
    this.title,
    this.onBackPressed,
    this.leading,
    this.trailing,
    this.bottom,
  });

  final double height;
  final EdgeInsets padding;
  final bool automaticallyImplyLeading;
  final bool primary;
  final Color? color;
  final Widget? title;
  final Widget? leading;
  final Widget? trailing;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onBackPressed;

  double get _height => height + (bottom?.preferredSize.height ?? 0.0);

  @override
  Size get preferredSize => Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    Widget? titleWidget;
    if (title != null) {
      titleWidget = DefaultTextStyle.merge(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TTextStyle.getBodyLarge(
          fontWeight: TFontWeight.bold,
        ),
        child: title!,
      );
    }

    Widget? leadingWidget;
    if (leading == null && automaticallyImplyLeading) {
      leadingWidget = IconButton(
        onPressed: onBackPressed,
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(IconAsset.caretLeft),
      );
    } else if (leading != null) {
      leadingWidget = leading;
    }

    Widget appbar = Padding(
      padding: padding,
      child: NavigationToolbar(
        leading: leadingWidget,
        middle: titleWidget,
        trailing: trailing,
      ),
    );

    if (bottom != null) {
      appbar = Column(
        children: <Widget>[
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: height,
              ),
              child: appbar,
            ),
          ),
          if (bottom != null) bottom!,
        ],
      );
    }

    appbar = Container(
      height: _height,
      decoration: BoxDecoration(
        color: color ?? context.colorScheme.background,
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.outline,
            width: 1.5,
          ),
        ),
      ),
      child: appbar,
    );

    if (primary) {
      appbar = SafeArea(
        bottom: false,
        child: appbar,
      );
    }

    return appbar;
  }
}
