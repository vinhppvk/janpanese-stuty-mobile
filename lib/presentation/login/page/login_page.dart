import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../app/asset/icon_asset.dart';
import '../../../app/asset/image_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/utils/extension/failure.dart';
import '../../../app/utils/validator/support_validator.dart';
import '../../../app/utils/validator/validation_messages.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../app/widget/checkbox/checkbox_form_field.dart';
import '../../../app/widget/loader/overlay_loader.dart';
import '../../../app/widget/text_field/normal_text_field.dart';
import '../../../app/widget/text_field/text_field_container.dart';
import '../../../core/error/failure.dart';
import '../../../core/error_handler/error_handler.dart';
import '../../../data/model/entity/request/login/login_params.dart';
import '../../../data/model/entity/validation/login/login_validation.dart';
import '../../../router/router_info.dart';
import '../../register/widget/label_divider.dart';
import '../bloc/login_bloc.dart';
import '../widget/third_pary_login_icon_button.dart';

part '../widget/local_widget/footer.dart';

part '../widget/local_widget/header.dart';

part '../widget/local_widget/login_options.dart';

part '../widget/local_widget/scaffold.dart';

part '../widget/local_widget/text_fields.dart';

part '../widget/local_widget/sub_footer.dart';

part '../widget/local_widget/third_party_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final OverlayLoader _overlayLoader = OverlayLoader();

  bool _rememberMe = false;
  LoginValidation? _validationModel;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (BuildContext context, LoginState state) {
        _overlayLoader.hide();
        _validationModel = null;
        switch (state) {
          case LoginStateInitial():
            break;
          case LoginStateLoading():
            _overlayLoader.show(context);
          case LoginStateLoaded():
            context.replaceNamed(RouterInfo.homePage.name);
          case LoginStateValidationLoginError(
              failure: final Failure<LoginValidation> failure
            ):
            _validationModel = failure.getValidationModel();
            ErrorHandler.handleNetworkFailure(context, failure);
        }
      },
      builder: (BuildContext context, LoginState state) {
        return _Scaffold(
          header: const _Header(),
          textFields: _TextFields(
            formKey: _formKey,
            emailController: _emailController,
            passwordController: _passwordController,
            validationModel: _validationModel,
          ),
          loginOptions: _LoginOptions(
            rememberMe: _rememberMe,
            onRememberMeChanged: (bool? value) {
              _rememberMe = value ?? false;
            },
          ),
          loginButton: PrimaryButton(
            onPressed: _onSignInPressed,
            child: const Text('Sign In'),
          ),
          buttonDivider: const LabelDivider(text: 'Or'),
          thirdPartyButtons: const _ThirdPartyButtons(),
          footer: const _Footer(),
          subFooter: const _SubFooter(),
        );
      },
    );
  }

  void _onSignInPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      final LoginParams loginParams = LoginParams(
        email: _emailController.text,
        password: _passwordController.text,
        rememberMe: _rememberMe,
      );
      context.read<LoginBloc>().add(LoginEvent.started(params: loginParams));
    } else {
      ErrorHandler.showErrorSnackBar(
        context,
        message: ValidationMessages.cm002(),
      );
    }
  }
}
