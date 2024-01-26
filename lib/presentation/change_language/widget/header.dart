part of '../page/change_language_page.dart';

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Choose your language',
          style: TTextStyle.getHeadingH4(),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Select your preferred language to use within the app',
          style: TTextStyle.getBodyLarge(
            fontWeight: TFontWeight.medium,
            color: TColor.grey500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}