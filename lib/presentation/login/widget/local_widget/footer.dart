part of '../../page/login_page.dart';

class _Footer extends StatelessWidget {
  const _Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}