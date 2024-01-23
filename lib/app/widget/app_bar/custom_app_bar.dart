import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = kToolbarHeight,
    required this.title,
    this.onBackPressed,
  });

  final double height;
  final Widget title;
  final VoidCallback? onBackPressed;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          border: Border(
            bottom: BorderSide(
              color: context.colorScheme.outline,
              width: 1.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildBackButton(),
            Expanded(
              child: DefaultTextStyle.merge(
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.bold),
                child: title,
              ),
            ),
            const SizedBox(width: kMinInteractiveDimension),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    final Widget backBtn = IconButton(
      onPressed: onBackPressed,
      padding: EdgeInsets.zero,
      icon: SvgPicture.asset(IconAsset.caretLeft),
    );
    return onBackPressed != null
        ? backBtn
        : const SizedBox(width: kMinInteractiveDimension);
  }
}
