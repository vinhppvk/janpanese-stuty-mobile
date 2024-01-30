part of '../../page/sub_views/reviews_page.dart';

class _CommentListHeader extends StatelessWidget {
  const _CommentListHeader({
    required this.reviewCount,
  });

  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.outline,
            width: 1.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Student Reviews',
            style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.bold),
          ),
          Text(
            '$reviewCount Reviews',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.medium,
              color: TColor.grey500,
            ),
          )
        ],
      ),
    );
  }
}
