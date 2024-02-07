part of '../../page/sub_views/about_me_view.dart';

class _ListTile extends StatelessWidget {
  const _ListTile({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          title,
          style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        Text(
          message,
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.medium,
            color: TColor.grey500,
          ),
        ),
      ],
    );
  }
}
