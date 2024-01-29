part of '../../page/login_page.dart';

class _LoginOptions extends StatelessWidget {
  const _LoginOptions({
    super.key,
    required this.rememberMe,
    required this.onRememberMeChanged,
  });

  final bool rememberMe;
  final Function(bool? value) onRememberMeChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IntrinsicWidth(
          child: CheckboxFormField(
            title: const Text('Remember me'),
            checkBoxSize: 24.0,
            initialValue: rememberMe,
            onChanged: onRememberMeChanged,
          ),
        ),
        Text.rich(
          TextSpan(
            text: 'Forgot password?',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.bold,
              color: context.colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ),
      ],
    );
  }
}