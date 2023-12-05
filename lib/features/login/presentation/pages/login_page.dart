import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../common_components/buttons/primary_button.dart';
import '../../../../common_components/text_field/drop_down_text_field.dart';
import '../../../../common_components/text_field/normal_text_field.dart';
import '../../../../common_components/text_field/password_text_field.dart';
import '../../../../core/config/asset/icon_asset.dart';
import '../../../../core/config/theme/style/color.dart';
import '../../../../core/config/theme/style/font_style.dart';
import '../../../../core/utils/enum/snackbar_mode.dart';
import '../../../../core/utils/helper/snack_bar.dart';
import '../../../../core/utils/validator/support_validator.dart';
import '../../../../core/utils/validator/validation_messages.dart';
import '../../../../router/router_info.dart';
import '../../../register/presentation/components/label_divider.dart';
import '../../utils/enum/supported_region.dart';
import '../components/third_pary_login_icon_button.dart';

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
              _buildHeader(),
              const SizedBox(height: 16.0),
              _buildInputField(),
              const SizedBox(height: 32.0),
              _buildActionField(),
              const SizedBox(height: 40.0),
              _buildFooter(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
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
              color: TColor.white,
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

  Widget _buildInputField() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          NormalTextField(
            title: 'Email',
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
          const SizedBox(height: 24.0),
          PasswordTextField(
            title: 'Password',
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
          const SizedBox(height: 8.0),
          Text.rich(
            TextSpan(
              text: 'Forgot password',
              style: TTextStyle.getBodyMedium(
                fontWeight: TFontWeight.bold,
                color: TColor.primary1000,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: PrimaryButton(
            text: 'Sign In',
            onPressed: () => onSignInPressed(context),
          ),
        ),
        const SizedBox(height: 24.0),
        const LabelDivider(text: 'Or continue with'),
        const SizedBox(height: 24.0),
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
        const SizedBox(height: 40.0),
        DropDownTextField<SupportedRegion>(
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
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Text.rich(
      TextSpan(
        text: 'Don’t have an account? ',
        style: TTextStyle.getBodyMedium(),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign up',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.bold,
              color: TColor.primary1000,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => context.pushNamed(RouterInfo.registerOptionsPage.name),
          ),
        ],
      ),
    );
  }

  Widget _buildSupportedLanguageMenuItem(
      BuildContext context, SupportedRegion language) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: TColor.grey300,
                blurRadius: 4,
                offset: Offset(0, 1),
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
