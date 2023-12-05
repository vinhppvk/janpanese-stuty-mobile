import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common_components/buttons/primary_button.dart';
import '../../../../../common_components/dialog/custom_alert_dialog.dart';
import '../../../../../common_components/text_field/otp_text_field.dart';
import '../../../../../core/config/asset/image_asset.dart';
import '../../../../../core/config/theme/style/color.dart';
import '../../../../../core/config/theme/style/font_style.dart';
import '../../../../../core/utils/validator/validation_messages.dart';
import '../../components/register_step_indicator.dart';

class RegisterStep2 extends StatefulWidget {
  const RegisterStep2({
    super.key,
    required this.onContinue,
  });

  final VoidCallback onContinue;

  @override
  State<RegisterStep2> createState() => _RegisterStep2State();
}

class _RegisterStep2State extends State<RegisterStep2> {
  final String _emailAddress = 'student@gmail.com';
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _pinNode = FocusNode();

  bool? _isValid;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pinController.dispose();
    _pinNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const RegisterStepIndicator(currentStep: RegisterStep.confirm),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                buildHeader(),
                const SizedBox(height: 32.0),
                buildOtpField(),
                const SizedBox(height: 24.0),
                PrimaryButton(
                  text: 'Verify',
                  onPressed: onContinuePressed,
                ),
                const SizedBox(height: 16.0),
                buildFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: <Widget>[
        Text(
          'OTP Verification',
          style: TTextStyle.getHeadingH4(),
        ),
        const SizedBox(height: 8.0),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            text: 'Please confirm your account by entering the code sent to ',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.medium,
            ),
            children: <InlineSpan>[
              TextSpan(
                text: _emailAddress,
                style: TTextStyle.getBodyMedium(
                  fontWeight: TFontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildOtpField() {
    return OtpTextField(
      controller: _pinController,
      focusNode: _pinNode,
      errorText: ValidationMessages.invalidOtp(),
      forceErrorState: !(_isValid ?? true),
    );
  }

  Widget buildFooter() {
    return Column(
      children: <Widget>[
        Text.rich(
          TextSpan(
            text: 'Didn’t receive the code? ',
            style: TTextStyle.getBodyMedium(),
            children: <InlineSpan>[
              TextSpan(
                text: 'Resend',
                style: TTextStyle.getBodyMedium(
                  fontWeight: TFontWeight.bold,
                  color: TColor.primary1000,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => resendOtpCode(context),
              )
            ],
          ),
        ),
      ],
    );
  }

  void onContinuePressed() {
    final bool isValid = _pinController.text == '99999';
    setState(() {
      _isValid = isValid;
    });
    if (!isValid) {
      _pinController.clear();
    } else {
      widget.onContinue();
    }
  }

  void resendOtpCode(BuildContext context) {
    final Widget dialog = CustomAlertDialog(
      title: 'Resend OTP Success!',
      message: 'We have just send you a 5 digit code via email',
      image: Image.asset(ImageAsset.emailIllustration),
      onPrimaryAction: () {
        context.pop();
      },
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }
}
