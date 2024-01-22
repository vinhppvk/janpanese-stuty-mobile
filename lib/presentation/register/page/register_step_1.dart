import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../app/asset/icon_asset.dart';
import '../../../../../app/utils/constant/date_formats.dart';
import '../../../../../app/utils/enum/snackbar_mode.dart';
import '../../../../../app/utils/validator/support_validator.dart';
import '../../../../../app/utils/validator/validation_messages.dart';
import '../../../../../presentation/register/utils/register_key.dart';
import '../../../../../router/router_info.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../app/utils/constant/app_url.dart';
import '../../../../app/utils/extension/build_context.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../../../app/utils/helper/open_webview.dart';
import '../../../../app/utils/helper/snack_bar.dart';
import '../../../../app/widget/buttons/primary_button.dart';
import '../../../../app/widget/checkbox/checkbox_form_field.dart';
import '../../../../app/widget/loader/overlay_loader.dart';
import '../../../../app/widget/picker/avatar_picker.dart';
import '../../../../app/widget/text_field/drop_down_text_field.dart';
import '../../../../app/widget/text_field/normal_text_field.dart';
import '../../../../app/widget/text_field/password_text_field.dart';
import '../../../../app/widget/text_field/search_drop_down_text_field.dart';
import '../../../../app/widget/text_field/text_field_container.dart';
import '../../../../core/error/failure.dart';
import '../../../core/error_handler/error_handler.dart';
import '../../../data/model/entity/enum/gender.dart';
import '../../../data/model/entity/request/register/register_user_params.dart';
import '../../../data/model/entity/validation/register/register_user_validation.dart';
import '../bloc/step_1/register_step_1_bloc.dart';
import '../utils/nationality.dart';
import '../utils/register_step.dart';
import '../widget/register_step_indicator.dart';

class RegisterStep1 extends StatefulWidget {
  const RegisterStep1({
    super.key,
    required this.onContinue,
  });

  final Function(String email) onContinue;

  @override
  State<RegisterStep1> createState() => _RegisterStep1State();
}

class _RegisterStep1State extends State<RegisterStep1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Map<String, TextEditingController> _controllers;
  final OverlayLoader _overlayLoader = OverlayLoader();

  List<Nationality> _nationalities = <Nationality>[];
  final List<Gender> _genders = Gender.values;

  File? _pickedFile;
  Gender? _selectedGender;
  bool _obscureText = true;
  Nationality? _selectedNationality;
  DateTime? _birthday;
  RegisterUserValidation? _validationModel;

  @override
  void initState() {
    super.initState();
    _controllers = <String, TextEditingController>{
      for (final String key in RegisterKey.keys) key: TextEditingController()
    };
    _nationalities = Nationality.mockData;
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
    return BlocConsumer<RegisterStep1Bloc, RegisterStep1State>(
      listener: (BuildContext context, RegisterStep1State state) {
        _overlayLoader.hide();
        _validationModel = null;
        switch (state) {
          case RegisterStep1StateInitial():
            break;
          case RegisterStep1StateLoading():
            _overlayLoader.show(context);
          case RegisterStep1StateRegisterResult():
            widget
                .onContinue((_controllers[RegisterKey.email]?.text).toString());
          case RegisterStep1StateRegisterUserError(
              failure: final Failure<RegisterUserValidation> failure
            ):
            switch (failure) {
              case HttpBadRequestFailure<RegisterUserValidation>(
                  data: final RegisterUserValidation? validationModel
                ):
                _validationModel = validationModel;
              default:
                break;
            }
            ErrorHandler.handleNetworkFailure(context, failure);
          case RegisterStep1StateLoaded():
          case RegisterStep1StateUploadImageResult():
            break;
        }
      },
      builder: (BuildContext context, RegisterStep1State state) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
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
                    onPressed: _onContinuePressed,
                    child: const Text('Continue'),
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
        TextFieldContainer(
          title: const Text('Email'),
          child: NormalTextField(
            hintText: 'Required*',
            icon: SvgPicture.asset(IconAsset.email),
            controller: _controllers[RegisterKey.email],
            keyboardType: TextInputType.emailAddress,
            errorText: _validationModel?.email,
            validator: SupportValidators.compose(
              <FormFieldValidator<String>>[
                SupportValidators.required(fieldName: RegisterKey.email),
                SupportValidators.inRangeLength(3, 70,
                    fieldName: RegisterKey.email),
                SupportValidators.email(errorText: ValidationMessages.m002()),
              ],
            ),
          ),
        ),
        TextFieldContainer(
          title: const Text('Nick name'),
          child: NormalTextField(
            hintText: 'Required*',
            controller: _controllers[RegisterKey.nickName],
            errorText: _validationModel?.nickName,
            validator: SupportValidators.compose(
              <FormFieldValidator>[
                SupportValidators.required(fieldName: RegisterKey.nickName),
                SupportValidators.inRangeLength(1, 50,
                    fieldName: RegisterKey.nickName)
              ],
            ),
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
        TextFieldContainer(
          title: const Text('Phone number'),
          child: NormalTextField(
            hintText: 'Required*',
            controller: _controllers[RegisterKey.phoneNumber],
            errorText: _validationModel?.phoneNumber,
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
        ),
        TextFieldContainer(
          title: const Text('Nationality'),
          child: SearchDropDownTextField<Nationality>(
            controller: _controllers[RegisterKey.nationality],
            items: _nationalities,
            selectedValue: _selectedNationality,
            errorText: _validationModel?.nationality,
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
        ),
      ],
    );
  }

  Widget _passwordFields() {
    return Wrap(
      runSpacing: 24.0,
      children: <Widget>[
        TextFieldContainer(
          title: const Text('Password'),
          child: PasswordTextField(
            hintText: 'Required*',
            obscureText: _obscureText,
            controller: _controllers[RegisterKey.password],
            errorText: _validationModel?.password,
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
        ),
        TextFieldContainer(
          title: const Text('Confirm Password'),
          child: PasswordTextField(
            hintText: 'Required*',
            obscureText: _obscureText,
            showObscureButton: false,
            controller: _controllers[RegisterKey.confirmPassword],
            errorText: _validationModel?.confirmPassword,
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
          child: TextFieldContainer(
            title: const Text('Gender'),
            child: DropDownTextField<Gender>(
              hint: 'Optional',
              selectedValue: _selectedGender,
              items: _genders,
              menuItemText: (Gender value) => value.text,
              errorText: _validationModel?.sex,
              onChanged: (Gender? gender) {
                setState(() {
                  _selectedGender = gender;
                });
              },
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: TextFieldContainer(
            title: const Text('Birthday'),
            child: NormalTextField(
              hintText: 'Optional',
              icon: SvgPicture.asset(IconAsset.calendarBlank),
              controller: _controllers[RegisterKey.birthday],
              // Disable user text input
              readOnly: true,
              onTap: _selectBirthDayDate,
              errorText: _validationModel?.birthday,
            ),
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
                    await openWebview(AppUrl.termOfUse);
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
                    await openWebview(AppUrl.privacyPolicy);
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
      final RegisterUserParams params = RegisterUserParams(
        email: (_controllers[RegisterKey.email]?.text).toString(),
        nickName: (_controllers[RegisterKey.nickName]?.text).toString(),
        sex: _selectedGender,
        birthday: _controllers[RegisterKey.birthday]
            ?.text
            .parseToDate(pattern: DateFormats.yyyyMMdd),
        phoneNumber: (_controllers[RegisterKey.phoneNumber]?.text).toString(),
        nationality: _selectedNationality?.name ?? '',
        password: (_controllers[RegisterKey.password]?.text).toString(),
        imagePhoto: 'image.png',
        confirmPassword:
            (_controllers[RegisterKey.confirmPassword]?.text).toString(),
      );
      context
          .read<RegisterStep1Bloc>()
          .add(RegisterStep1EventRegisterUser(params));
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
      initialDate: _birthday ?? DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      _controllers[RegisterKey.birthday]?.text =
          pickedDate.format(pattern: DateFormats.yyyyMMdd);
    }
  }
}
