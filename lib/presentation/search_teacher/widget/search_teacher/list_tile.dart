part of '../../page/search_teacher_page.dart';

class _ListTile extends StatelessWidget {
  const _ListTile();

  static const String _description = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas condimentum, nisl vel sodales sodales, sem tortor consequat felis, at euismod velit odio et lacus. Duis venenatis nisi eget tristique cursus. Morbi lacinia sagittis est, id egestas purus sagittis quis. Mauris lacus quam, commodo vel ultricies hendrerit, suscipit sed erat. Donec finibus, odio ut pellentesque molestie, nulla neque porttitor quam, non blandit nibh lorem ac neque. Vivamus scelerisque ante ut tempor maximus. Curabitur ac dui non dolor feugiat pellentesque ut in felis. Proin sollicitudin tristique imperdiet.
Nullam vitae nunc metus. Curabitur a accumsan erat. Duis sit amet ornare neque. Proin ultrices libero lacus, sit amet convallis ipsum bibendum eu. Nulla facilisi. Nam eleifend, magna eget dapibus mollis, lacus diam condimentum nisl, sed placerat ex nibh egestas libero. Nullam sed magna quis libero vulputate fermentum eget quis lorem. Nulla massa nisi, aliquam nec libero ac, eleifend bibendum turpis. Aenean sed interdum metus. In ac dictum sapien. Vestibulum sagittis sapien eu consectetur convallis. Aenean at maximus ante. Maecenas lobortis elit ligula, a semper erat porta id. Nulla porta vel sem vitae cursus. Pellentesque porta tortor velit, ac placerat ante mollis sed. Nunc ut lorem dui.''';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Row(
          children: <Widget>[
            SizedBox.square(
              dimension: 72.0,
              child: ClipOval(
                child: CustomNetworkImage(imageUrl: AppUrl.placeholderImageUrl),
              ),
            ),
            SizedBox(width: 12.0),
            _ListTileHeader(),
          ],
        ),
        const SizedBox(height: 10.0),
        const Divider(),
        const SizedBox(height: 10.0),
        Text(
          _description,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: TTextStyle.getBodyMedium(color: TColor.grey900),
        ),
      ],
    );
  }
}
