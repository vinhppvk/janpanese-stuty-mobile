part of 'rating_bar.dart';

class _Clipper extends CustomClipper<Rect> {
  _Clipper({required this.clipPercentage});

  final double clipPercentage;

  @override
  Rect getClip(Size size) => Rect.fromLTRB(
        size.width * clipPercentage,
        0.0,
        size.width,
        size.height,
      );

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => true;
}
