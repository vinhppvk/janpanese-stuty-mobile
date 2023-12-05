import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdPartyIconButton extends StatelessWidget {
  const ThirdPartyIconButton({
    super.key,
    required this.assetName,
    this.onPressed,
  });

  final String assetName;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(assetName),
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
    );
  }
}
