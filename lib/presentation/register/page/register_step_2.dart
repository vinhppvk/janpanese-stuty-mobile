import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/asset/image_asset.dart';

import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/dialog/custom_alert_dialog.dart';
import '../../../app/widget/loader/overlay_loader.dart';
import '../../../app/widget/text_field/otp_text_field.dart';
import '../../../core/error/failure.dart';
import '../../../core/error_handler/error_handler.dart';
import '../../../data/model/entity/validation/register/verify_otp_validation.dart';
import '../bloc/step_2/register_step_2_bloc.dart';
import '../utils/register_step.dart';
import '../widget/register_step_indicator.dart';

class RegisterStep2 extends StatefulWidget {
  const RegisterStep2({
    super.key,
    required this.onContinue,
    required this.email,
  });

  final VoidCallback onContinue;
  final String email;

  @override
  State<RegisterStep2> createState() => _RegisterStep2State();
}

class _RegisterStep2State extends State<RegisterStep2> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _pinNode = FocusNode();
  final OverlayLoader _overlayLoader = OverlayLoader();

  VerifyOtpValidation? _validationModel;

  bool get _forceErrorState => _validationModel?.authCode != null;

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
    return BlocConsumer<RegisterStep2Bloc, RegisterStep2State>(
      listener: (BuildContext context, RegisterStep2State state) {
        _overlayLoader.hide();
        _validationModel = null;
        switch (state) {
          case RegisterStep2StateInitial():
            break;
          case RegisterStep2StateLoading():
            _overlayLoader.show(context);
          case RegisterStep2StateResendOtpResult():
            showResendSuccessDialog(context);
          case RegisterStep2StateVerifyOtpResult():
            widget.onContinue();
          case RegisterStep2StateVerifyOtpError(
              failure: final Failure<VerifyOtpValidation> failure,
            ):
            switch (failure) {
              case HttpBadRequestFailure<VerifyOtpValidation>(
                  data: final VerifyOtpValidation? data
                ):
                _validationModel = data;
              default:
                break;
            }
            ErrorHandler.handleNetworkFailure(context, failure);
            _pinController.clear();
          case RegisterStep2StateError(failure: final Failure<void> failure):
            ErrorHandler.handleNetworkFailure(context, failure);
        }
      },
      builder: (BuildContext context, RegisterStep2State state) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const RegisterStepIndicator(currentStep: RegisterStep.confirm),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                _header(),
                const SizedBox(height: 32.0),
                _otpField(),
                const SizedBox(height: 24.0),
                PrimaryButton(
                  onPressed: onContinuePressed,
                  child: const Text('Verify'),
                ),
                const SizedBox(height: 16.0),
                _footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
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
                text: widget.email,
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

  Widget _otpField() {
    return OtpTextField(
      controller: _pinController,
      focusNode: _pinNode,
      errorText: _validationModel?.authCode,
      forceErrorState: _forceErrorState,
    );
  }

  Widget _footer() {
    return Text.rich(
      TextSpan(
        text: 'Didn’t receive the code? ',
        style: TTextStyle.getBodyMedium(),
        children: <InlineSpan>[
          TextSpan(
            text: 'Resend',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.bold,
              color: context.colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => resendOtpCode(context),
          )
        ],
      ),
    );
  }

  void onContinuePressed() {
    context.read<RegisterStep2Bloc>().add(
        RegisterStep2Event.verifyOtpCode(widget.email, _pinController.text));
  }

  void resendOtpCode(BuildContext context) {
    context
        .read<RegisterStep2Bloc>()
        .add(RegisterStep2Event.resendOtpCode(widget.email));
  }

  void showResendSuccessDialog(BuildContext context) {
    final Widget dialog = CustomAlertDialog.singleBtn(
      title: const Text('Resend OTP Success!'),
      message: const Text('We have just send you a 5 digit code via email'),
      image: Image.asset(ImageAsset.emailIllustration),
      onPrimaryAction: () {
        _pinController.clear();
        context.pop();
      },
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }
}
