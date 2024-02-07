part of 'rating_bar.dart';

class _StarIcon extends StatelessWidget {
  const _StarIcon({
    this.size,
    required this.color,
  });

  final double? size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      IconAsset.filledStar,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}