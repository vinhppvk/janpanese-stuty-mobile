import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/config/asset/icon_asset.dart';
import '../../core/config/theme/style/color.dart';
import '../../core/config/theme/style/font_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = kToolbarHeight,
    required this.text,
    this.onBackPressed,
  });

  final double height;
  final String text;
  final VoidCallback? onBackPressed;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          color: TColor.white,
          border: Border(
            bottom: BorderSide(
              color: TColor.grey200,
              width: 1.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildBackButton(),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.bold),
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
