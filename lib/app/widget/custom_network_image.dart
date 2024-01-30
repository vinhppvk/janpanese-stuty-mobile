import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../asset/icon_asset.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.indicatorWidgetSize = 24.0,
    this.errorWidgetSize = 24.0,
  });

  final String imageUrl;
  final double indicatorWidgetSize;
  final double errorWidgetSize;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (_, __) => Center(
        child: SizedBox.square(
          dimension: indicatorWidgetSize,
          child: const CircularProgressIndicator(),
        ),
      ),
      errorWidget: (_, __, ___) => Center(
        child: SvgPicture.asset(
          IconAsset.sealWarning,
          width: errorWidgetSize,
          height: errorWidgetSize,
        ),
      ),
    );
  }
}
