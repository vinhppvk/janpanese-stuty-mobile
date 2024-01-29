part of '../../page/personal_notifications_view.dart';

class _TrailingTitle extends StatelessWidget {
  const _TrailingTitle({
    super.key,
    required this.title,
    required this.senderEmail,
  });

  final String title;
  final String senderEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.bold,
            color: context.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 2.0),
        Text(
          senderEmail,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TTextStyle.getBodySmall(),
        ),
      ],
    );
  }
}
