part of '../../page/login_page.dart';

class _SubFooter extends StatelessWidget {
  const _SubFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(RouterInfo.changeLanguage.name),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(IconAsset.globe),
          const SizedBox(width: 2.0),
          Text(
            'Change language',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.medium,
              color: TColor.coral,
            ),
          ),
        ],
      ),
    );
  }
}