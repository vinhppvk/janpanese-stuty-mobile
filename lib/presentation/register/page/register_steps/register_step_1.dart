import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../app/asset/icon_asset.dart';
import '../../../../../app/utils/constant/date_formats.dart';
import '../../../../../app/utils/constant/web_url.dart';
import '../../../../../app/utils/enum/gender.dart';
import '../../../../../app/utils/enum/snackbar_mode.dart';
import '../../../../../app/utils/validator/support_validator.dart';
import '../../../../../app/utils/validator/validation_messages.dart';
import '../../../../../domain/model/dto/register_step_1/country_code.dart';
import '../../../../../domain/model/dto/register_step_1/nationality.dart';
import '../../../../../presentation/register/utils/register_key.dart';
import '../../../../../router/router_info.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../app/utils/extension/build_context.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../../../app/utils/helper/open_webview.dart';
import '../../../../app/utils/helper/snack_bar.dart';
import '../../../../app/widget/buttons/primary_button.dart';
import '../../../../app/widget/checkbox/checkbox_form_field.dart';
import '../../../../app/widget/picker/avatar_picker.dart';
import '../../../../app/widget/text_field/drop_down_text_field.dart';
import '../../../../app/widget/text_field/normal_text_field.dart';
import '../../../../app/widget/text_field/password_text_field.dart';
import '../../../../app/widget/text_field/search_drop_down_text_field.dart';
import '../../utils/register_step.dart';
import '../../widget/register_step_indicator.dart';


class RegisterStep1 extends StatefulWidget {
  const RegisterStep1({
    super.key,
    required this.onContinue,
  });

  final VoidCallback onContinue;

  @override
  State<RegisterStep1> createState() => _RegisterStep1State();
}

class _RegisterStep1State extends State<RegisterStep1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Map<String, TextEditingController> _controllers;

  List<CountryCode> _countryCodes = <CountryCode>[];
  List<Nationality> _nationalities = <Nationality>[];
  final List<Gender> _genders = Gender.values;

  File? _pickedFile;
  Gender? _selectedGender;
  bool _obscureText = true;
  CountryCode? _selectedCountryCode;
  Nationality? _selectedNationality;

  @override
  void initState() {
    super.initState();
    _controllers = <String, TextEditingController>{
      for (final String key in RegisterKey.keys) key: TextEditingController()
    };
    _countryCodes = CountryCode.mockData;
    _nationalities = Nationality.mockData;
    _selectedCountryCode = _countryCodes.last;
    _selectedNationality = _nationalities.last;
  }

  @override
  void dispose() {
    _controllers.forEach((_, TextEditingController controller) {
      controller.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const RegisterStepIndicator(currentStep: RegisterStep.account),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: <Widget>[
                _avatarPicker(),
                const SizedBox(height: 24.0),
                _inputFields(),
                const SizedBox(height: 32.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: PrimaryButton(
                    text: const Text('Continue'),
                    onPressed: _onContinuePressed,
                  ),
                ),
                const SizedBox(height: 16.0),
                _footer(),
                const SizedBox(height: 48.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatarPicker() {
    return AvatarPicker(
      imageFile: _pickedFile,
      onImageChanged: (File? imageFile) {
        setState(() {
          _pickedFile = imageFile;
        });
      },
      onValidationError: (String errorText) {
        showCustomSnackBar(
          context,
          message: errorText,
          mode: SnackBarMode.error,
        );
      },
    );
  }

  Widget _footer() {
    return Text.rich(
      style: TTextStyle.getBodyMedium(),
      TextSpan(
        text: 'Already have an account? ',
        children: <InlineSpan>[
          TextSpan(
            text: 'Sign in',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.bold,
              color: context.colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.goNamed(RouterInfo.loginPage.name),
          ),
        ],
      ),
    );
  }

  Widget _inputFields() {
    return Form(
      key: _formKey,
      child: Wrap(
        runSpacing: 24.0,
        children: <Widget>[
          _personalInfoFields(),
          _countryFields(),
          _passwordFields(),
          _checkBoxFormField(),
        ],
      ),
    );
  }

  Widget _personalInfoFields() {
    return Wrap(
      runSpacing: 24.0,
      children: <Widget>[
        NormalTextField(
          title: 'Email',
          hintText: 'Required*',
          icon: SvgPicture.asset(IconAsset.email),
          controller: _controllers[RegisterKey.email],
          keyboardType: TextInputType.emailAddress,
          validator: SupportValidators.compose(
            <FormFieldValidator<String>>[
              SupportValidators.required(fieldName: RegisterKey.email),
              SupportValidators.inRangeLength(3, 70,
                  fieldName: RegisterKey.email),
              SupportValidators.email(errorText: ValidationMessages.m002()),
            ],
          ),
        ),
        NormalTextField(
          title: 'Nick name',
          hintText: 'Required*',
          controller: _controllers[RegisterKey.nickName],
          validator: SupportValidators.compose(
            <FormFieldValidator>[
              SupportValidators.required(fieldName: RegisterKey.nickName),
              SupportValidators.inRangeLength(1, 50,
                  fieldName: RegisterKey.nickName)
            ],
          ),
        ),
        _genderAndBirthdayField(),
      ],
    );
  }

  Widget _countryFields() {
    return Wrap(
      runSpacing: 24.0,
      children: <Widget>[
        SearchDropDownTextField<CountryCode>(
          title: 'Country Code',
          controller: _controllers[RegisterKey.countryCode],
          items: _countryCodes,
          selectedValue: _selectedCountryCode,
          menuItemText: (CountryCode value) => value.displayText,
          onChanged: (CountryCode? value) {
            setState(() {
              _selectedCountryCode = value;
            });
          },
          searchMatchFn:
              (DropdownMenuItem<CountryCode> item, String searchValue) {
            final String displayText = (item.value?.displayText).toString();
            return displayText
                .toLowerCase()
                .contains(searchValue.toLowerCase());
          },
        ),
        NormalTextField(
          title: 'Phone number',
          hintText: 'Required*',
          controller: _controllers[RegisterKey.phoneNumber],
          icon: Center(
            child: Text(
              '(${_selectedCountryCode?.code})',
              style: TTextStyle.getBodyMedium(),
            ),
          ),
          keyboardType: TextInputType.phone,
          onTapOutside: (_) {
            context.focusScope.unfocus();
          },
          validator: SupportValidators.compose(
            <FormFieldValidator<String>>[
              SupportValidators.required(fieldName: RegisterKey.phoneNumber),
              SupportValidators.numeric(fieldName: RegisterKey.phoneNumber),
              SupportValidators.maxLength(11,
                  fieldName: RegisterKey.phoneNumber),
            ],
          ),
        ),
        SearchDropDownTextField<Nationality>(
          title: 'Nationality',
          controller: _controllers[RegisterKey.nationality],
          items: _nationalities,
          selectedValue: _selectedNationality,
          onChanged: (Nationality? value) {
            setState(() {
              _selectedNationality = value;
            });
          },
          menuItemText: (Nationality value) => value.name,
          searchMatchFn:
              (DropdownMenuItem<Nationality> item, String searchValue) {
            final String name = (item.value?.name).toString();
            return name.toLowerCase().contains(searchValue.toLowerCase());
          },
        ),
      ],
    );
  }

  Widget _passwordFields() {
    return Wrap(
      runSpacing: 24.0,
      children: <Widget>[
        PasswordTextField(
          title: 'Password',
          hintText: 'Required*',
          obscureText: _obscureText,
          controller: _controllers[RegisterKey.password],
          onObscureButtonPressed: (bool obscureText) {
            setState(() {
              _obscureText = obscureText;
            });
          },
          validator: SupportValidators.compose(
            <FormFieldValidator>[
              SupportValidators.required(fieldName: RegisterKey.password),
              SupportValidators.inRangeLength(8, 16,
                  fieldName: RegisterKey.password)
            ],
          ),
        ),
        PasswordTextField(
          title: 'Confirm Password',
          hintText: 'Required*',
          obscureText: _obscureText,
          showObscureButton: false,
          validator: SupportValidators.compose(
            <FormFieldValidator<String>>[
              SupportValidators.required(
                  fieldName: RegisterKey.confirmPassword),
              SupportValidators.inRangeLength(8, 16,
                  fieldName: RegisterKey.confirmPassword),
              SupportValidators.confirmPassword(
                  controller: _controllers[RegisterKey.password]),
            ],
          ),
        )
      ],
    );
  }

  Widget _genderAndBirthdayField() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: DropDownTextField<Gender>(
            title: 'Gender',
            hint: 'Optional',
            selectedValue: _selectedGender,
            items: _genders,
            menuItemText: (Gender value) => value.text,
            onChanged: (Gender? gender) {
              setState(() {
                _selectedGender = gender;
              });
            },
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: NormalTextField(
            title: 'Birthday',
            hintText: 'Optional',
            controller: _controllers[RegisterKey.birthday],
            icon: SvgPicture.asset(IconAsset.calendarBlank),
            // Disable user text input
            readOnly: true,
            onTap: _selectBirthDayDate,
          ),
        ),
      ],
    );
  }

  Widget _checkBoxFormField() {
    return CheckboxFormField(
      title: ExcludeSemantics(
        child: Text.rich(
          style: TTextStyle.getBodyMedium(),
          TextSpan(
            text: 'I agree to the ',
            children: <InlineSpan>[
              TextSpan(
                text: 'Term of Use',
                style: TTextStyle.getBodyMedium(
                  fontWeight: TFontWeight.bold,
                  color: context.colorScheme.secondary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await openWebview(WebUrl.termOfUse);
                  },
              ),
              const TextSpan(
                text: ' and ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TTextStyle.getBodyMedium(
                  fontWeight: TFontWeight.bold,
                  color: context.colorScheme.secondary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await openWebview(WebUrl.privacyPolicy);
                  },
              ),
            ],
          ),
        ),
      ),
      validator: SupportValidators.compose(
        <FormFieldValidator<bool>>[
          SupportValidators.checkRequired(
            message: ValidationMessages.m016(),
          ),
        ],
      ),
    );
  }

  void _onContinuePressed() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.onContinue();
    } else {
      showCustomSnackBar(
        context,
        message: ValidationMessages.cm001(),
        mode: SnackBarMode.error,
      );
    }
  }

  Future<void> _selectBirthDayDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      _controllers[RegisterKey.birthday]?.text =
          pickedDate.format(pattern: DateFormats.yyyyMMdd);
    }
  }
}
