part of '../../page/login_page.dart';

class _TextFields extends StatefulWidget {
  const _TextFields({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.validationModel,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final LoginValidation? validationModel;

  @override
  State<_TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<_TextFields> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextFieldContainer(
            title: const Text('Email'),
            child: NormalTextField(
              hintText: 'Enter email',
              prefixIcon: SvgPicture.asset(IconAsset.email),
              keyboardType: TextInputType.emailAddress,
              controller: widget.emailController,
              errorText: widget.validationModel?.email,
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
            child: NormalTextField.password(
              hintText: 'Enter password',
              obscureText: _obscureText,
              controller: widget.passwordController,
              onObscureButtonPressed: (bool? value) {
                setState(() {
                  _obscureText = value ?? false;
                });
              },
              errorText: widget.validationModel?.password,
              validator: SupportValidators.compose(
                <FormFieldValidator>[
                  SupportValidators.required(fieldName: 'password'),
                  SupportValidators.inRangeLength(8, 16, fieldName: 'password'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
