import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';

class OutlineTonalChip extends StatelessWidget {
  const OutlineTonalChip({
    super.key,
    required this.label,
    this.avatarAsset,
    required this.selected,
    this.normalTintColor = TColor.grey700,
    this.selectedTintColor = TColor.primary1000,
    this.selectedBackgroundColor = TColor.primary100,
    this.selectedBorderColor = TColor.primary500,
    this.shape,
    this.onPressed,
  });

  final Widget label;
  final String? avatarAsset;
  final bool selected;
  final OutlinedBorder? shape;
  final Color normalTintColor;
  final Color selectedTintColor;
  final Color selectedBackgroundColor;
  final Color selectedBorderColor;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final Color tintColor = selected ? selectedTintColor : normalTintColor;
    final Color backgroundColor =
        selected ? selectedBackgroundColor : context.colorScheme.surface;
    final Color borderColor =
        selected ? selectedBorderColor : context.colorScheme.outline;

    Widget? avatar;
    if (avatarAsset != null) {
      avatar = SvgPicture.asset(
        avatarAsset!,
        width: 18.0,
        height: 18.0,
        colorFilter: ColorFilter.mode(
          tintColor,
          BlendMode.srcIn,
        ),
      );
    }

    return RawChip(
      avatar: avatar,
      label: label,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: backgroundColor,
      labelStyle: TTextStyle.getBodyMedium(
        fontWeight: TFontWeight.medium,
        color: tintColor,
        height: null,
      ),
      shape: shape,
      side: BorderSide(
        color: borderColor,
        width: 1.5,
      ),
      onPressed: onPressed,
    );
  }
}
