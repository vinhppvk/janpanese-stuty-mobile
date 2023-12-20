import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/asset/icon_asset.dart';
import '../../../../router/router_info.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../widget/label_divider.dart';
import '../widget/third_party_button.dart';

class RegisterOptionsPage extends StatefulWidget {
  const RegisterOptionsPage({super.key});

  @override
  State<RegisterOptionsPage> createState() => _RegisterOptionsPageState();
}

class _RegisterOptionsPageState extends State<RegisterOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Sign Up',
        onBackPressed: () => context.pop(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 24.0),
              buildHeader(),
              const SizedBox(height: 64.0),
              buildOptionButtons(),
              const Spacer(),
              buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: <Widget>[
        Text(
          'Register Account',
          textAlign: TextAlign.center,
          style: TTextStyle.getHeadingH4(),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Enter your information or sign in with social media app',
          textAlign: TextAlign.center,
          style: TTextStyle.getBodyLarge(
            fontWeight: TFontWeight.medium,
            color: TColor.grey600,
          ),
        ),
      ],
    );
  }

  Widget buildOptionButtons() {
    return Wrap(
      runSpacing: 16.0,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: PrimaryButton(
            text: 'Continue',
            onPressed: () {
              context.pushNamed(RouterInfo.registerPage.name);
            },
          ),
        ),
        const LabelDivider(text: 'Or'),
        ThirdPartyButton(
          text: 'Sign in using facebook',
          icon: SvgPicture.asset(IconAsset.facebook),
          onPressed: () {},
        ),
        ThirdPartyButton(
          text: 'Sign in using google',
          icon: SvgPicture.asset(IconAsset.google),
          onPressed: () {},
        ),
        ThirdPartyButton(
          text: 'Sign in using zalo',
          icon: SvgPicture.asset(IconAsset.zalo),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text.rich(
        TextSpan(
          text: 'Already have an account? ',
          style: TTextStyle.getBodyMedium(),
          children: <TextSpan>[
            TextSpan(
              text: 'Sign in',
              style: TTextStyle.getBodyMedium(
                fontWeight: TFontWeight.bold,
                color: TColor.primary1000,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
