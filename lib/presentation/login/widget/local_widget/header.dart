part of '../../page/login_page.dart';

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(ImageAsset.appLogo),
        ),
        const SizedBox(height: 16.0),
        Text(
          'Welcome',
          style: TTextStyle.getHeadingH3(),
        ),
      ],
    );
  }
}