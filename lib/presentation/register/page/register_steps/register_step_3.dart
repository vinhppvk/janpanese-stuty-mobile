import 'package:flutter/material.dart';

import '../../../../../app/asset/image_asset.dart';

import '../../../../app/theme/style/color.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../app/widget/buttons/primary_button.dart';
import '../../utils/register_step.dart';
import '../../widget/register_step_indicator.dart';

class RegisterStep3 extends StatefulWidget {
  const RegisterStep3({
    super.key,
    required this.onContinue,
  });

  final VoidCallback onContinue;

  @override
  State<RegisterStep3> createState() => _RegisterStep3State();
}

class _RegisterStep3State extends State<RegisterStep3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const RegisterStepIndicator(currentStep: RegisterStep.finish),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                Image.asset(ImageAsset.celebrationIllustration),
                const SizedBox(height: 40.0),
                Text(
                  'SIGN UP COMPLETED',
                  style: TTextStyle.getHeadingH4(
                    color: TColor.secondary1000,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'You can now sign in to your account',
                  style: TTextStyle.getBodyXLarge(),
                ),
                const SizedBox(height: 32.0),
                PrimaryButton(
                  text: 'Sign In',
                  onPressed: widget.onContinue,
                ),
                const SizedBox(height: 32.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
