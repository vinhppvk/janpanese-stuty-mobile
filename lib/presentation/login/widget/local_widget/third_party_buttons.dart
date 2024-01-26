part of '../../page/login_page.dart';

class _ThirdPartyButtons extends StatelessWidget {
  const _ThirdPartyButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24.0,
      children: <Widget>[
        ThirdPartyIconButton(
          assetName: IconAsset.facebookBig,
          onPressed: () {},
        ),
        ThirdPartyIconButton(
          assetName: IconAsset.googleBig,
          onPressed: () {},
        ),
        ThirdPartyIconButton(
          assetName: IconAsset.zaloBig,
          onPressed: () {},
        ),
      ],
    );
  }
}