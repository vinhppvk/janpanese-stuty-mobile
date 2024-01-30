import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/color.dart';
import '../../utils/extension/spacing_extension.dart';

part 'star_icon.dart';

part 'clipper.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({
    super.key,
    this.starCount = 5,
    required this.rating,
    this.spacing = 4.0,
    this.starSize = 24.0,
    this.highlightColor = TColor.mikadoYellow,
    this.emptyColor = TColor.grey300,
  });

  final int starCount;
  final double rating;
  final double spacing;
  final double starSize;
  final Color highlightColor;
  final Color emptyColor;

  @override
  Widget build(BuildContext context) {
    final List<Widget> starList = List<Widget>.empty(growable: true);

    final int floorRating = rating.floor();

    /// Get the first decimal digit then round up to the next ceiling. Ex: 0.49 => 0.5
    final int partNumber = ((rating - floorRating) * 10).ceil();

    /// Convert back to percentage
    final double partPercent = partNumber / 10;

    for (int i = 0; i < starCount; i++) {
      if (i < floorRating) {
        starList.add(_StarIcon(size: starSize, color: highlightColor));
      } else if (i == floorRating) {
        starList.add(
          SizedBox.square(
            dimension: starSize,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                _StarIcon(
                  color: highlightColor,
                ),
                // Clip the empty star from LTR
                ClipRect(
                  clipper: _Clipper(
                    clipPercentage: partPercent,
                  ),
                  child: _StarIcon(
                    color: emptyColor,
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        starList.add(_StarIcon(size: starSize, color: emptyColor));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: starList,
    ).withSpacing(spacing: spacing);
  }
}
