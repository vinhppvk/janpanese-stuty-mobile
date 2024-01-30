part of '../page/notification_detail_page.dart';

class _LabelContainer extends StatelessWidget {
  const _LabelContainer({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Text child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          title,
          style: TTextStyle.getBodySmall(
            fontWeight: TFontWeight.medium,
            color: TColor.grey500,
          ),
        ),
        const SizedBox(height: 4.0),
        child,
      ],
    );
  }
}
