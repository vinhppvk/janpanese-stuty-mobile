import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../app/asset/icon_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/enum/snackbar_mode.dart';
import '../../../app/utils/enum/supported_region.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/utils/helper/snack_bar.dart';
import '../../../app/utils/validator/support_validator.dart';
import '../../../app/utils/validator/validation_messages.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/text_field/drop_down_text_field.dart';
import '../../../app/widget/text_field/normal_text_field.dart';
import '../../../app/widget/text_field/password_text_field.dart';
import '../../../app/widget/text_field/text_field_container.dart';
import '../../../router/router_info.dart';
import '../../register/widget/label_divider.dart';
import '../widget/third_pary_login_icon_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;
  SupportedRegion? _selectedRegion = SupportedRegion.america;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 32.0),
              _header(),
              const SizedBox(height: 16.0),
              _textFields(),
              const SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PrimaryButton(
                  text: const Text('Sign In'),
                  onPressed: () => onSignInPressed(context),
                ),
              ),
              const SizedBox(height: 24.0),
              const LabelDivider(text: 'Or continue with'),
              const SizedBox(height: 24.0),
              _thirdParyButtons(),
              const SizedBox(height: 40.0),
              _languageDropDown(),
              const SizedBox(height: 24.0),
              _footer(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      children: <Widget>[
        Container(
          width: 120.0,
          height: 120.0,
          decoration: BoxDecoration(
            color: TColor.primary500,
            borderRadius: BorderRadius.circular(24.0),
          ),
          alignment: Alignment.center,
          child: Text(
            'APP LOGO',
            style: TTextStyle.getBodyLarge(
              fontWeight: TFontWeight.bold,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        Text(
          'Welcome',
          style: TTextStyle.getHeadingH3(),
        ),
      ],
    );
  }

  Widget _textFields() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextFieldContainer(
            title: const Text('Email'),
            child: NormalTextField(
              hintText: 'Enter email',
              icon: SvgPicture.asset(IconAsset.email),
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              validator: SupportValidators.compose(
                <FormFieldValidator<String>>[
                  SupportValidators.required(fieldName: 'email'),
                  SupportValidators.inRangeLength(3, 70, fieldName: 'email'),
                  SupportValidators.email(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          TextFieldContainer(
            title: const Text('Password'),
            child: PasswordTextField(
              hintText: 'Enter password',
              obscureText: _obscureText,
              controller: _passwordController,
              onObscureButtonPressed: (bool obscureText) {
                setState(() {
                  _obscureText = obscureText;
                });
              },
              validator: SupportValidators.compose(
                <FormFieldValidator>[
                  SupportValidators.required(fieldName: 'password'),
                  SupportValidators.inRangeLength(8, 16, fieldName: 'password'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text.rich(
            TextSpan(
              text: 'Forgot password',
              style: TTextStyle.getBodyMedium(
                fontWeight: TFontWeight.bold,
                color: context.colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdParyButtons() {
    return Column(
      children: <Widget>[
        Wrap(
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
        ),
      ],
    );
  }

  Widget _languageDropDown() {
    return DropDownTextField<SupportedRegion>(
      width: 160.0,
      height: 48.0,
      items: SupportedRegion.values,
      selectedValue: _selectedRegion,
      menuItemBuilder: _buildSupportedLanguageMenuItem,
      onChanged: (SupportedRegion? value) {
        setState(() {
          _selectedRegion = value;
        });
      },
    );
  }

  Widget _buildSupportedLanguageMenuItem(
      BuildContext context, SupportedRegion language) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: context.colorScheme.shadow,
                blurRadius: 4,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: SvgPicture.asset(
            language.flagAssetName,
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
            language.countryName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
          ),
        ),
      ],
    );
  }

  Widget _footer() {
    return Text.rich(
      TextSpan(
        text: 'Don’t have an account? ',
        style: TTextStyle.getBodyMedium(),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign up',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.bold,
              color: context.colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.pushNamed(RouterInfo.registerPage.name),
          ),
        ],
      ),
    );
  }

  void onSignInPressed(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      // Login
      showCustomSnackBar(
        context,
        message: 'Login Success',
        mode: SnackBarMode.success,
      );
    } else {
      showCustomSnackBar(
        context,
        message: ValidationMessages.cm002(),
        mode: SnackBarMode.error,
      );
    }
  }
}
