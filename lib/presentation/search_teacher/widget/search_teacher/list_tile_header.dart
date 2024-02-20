part of '../../page/search_teacher_page.dart';

class _ListTileHeader extends StatelessWidget {
  const _ListTileHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'John Appleseed',
          style: TTextStyle.getBodyLarge(
            fontWeight: TFontWeight.bold,
            color: TColor.grey900,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          'teacher@gmail.com',
          style: TTextStyle.getBodyMedium(color: TColor.grey600),
        ),
        const SizedBox(height: 4.0),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ..._buildNationalityView(context),
            const SizedBox(width: 8.0),
            const SizedBox(
              height: 24.0,
              child: VerticalDivider(
                indent: 4.0,
                endIndent: 4.0,
              ),
            ),
            const SizedBox(width: 8.0),
            ..._buildRatingView(),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildNationalityView(BuildContext context) {
    return <Widget>[
      Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 4.0,
              color: context.colorScheme.surfaceTint.withOpacity(.25),
            ),
          ],
        ),
        child: const Flag.fromString(
          'jp',
          width: 24.0,
          height: 16.0,
          borderRadius: 4.0,
        ),
      ),
      const SizedBox(width: 4.0),
      Text(
        'Japan',
        style: TTextStyle.getBodyMedium(
          fontWeight: TFontWeight.medium,
          color: TColor.grey900,
        ),
      ),
    ];
  }

  List<Widget> _buildRatingView() {
    return <Widget>[
      SvgPicture.asset(
        IconAsset.filledStar,
        height: 18.0,
        width: 18.0,
        colorFilter: const ColorFilter.mode(
          TColor.mikadoYellow,
          BlendMode.srcIn,
        ),
      ),
      const SizedBox(width: 4.0),
      Text.rich(
        TextSpan(
          text: '4',
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.medium,
            color: TColor.grey900,
          ),
          children: <InlineSpan>[
            TextSpan(
              text: ' (5 Reviews)',
              style: TTextStyle.getBodyMedium(color: TColor.grey500),
            ),
          ],
        ),
      ),
    ];
  }
}
