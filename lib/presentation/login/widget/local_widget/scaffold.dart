part of '../../page/login_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.header,
    required this.textFields,
    required this.loginOptions,
    required this.loginButton,
    required this.buttonDivider,
    required this.thirdPartyButtons,
    required this.footer,
    required this.subFooter,
  });

  final Widget header;
  final Widget textFields;
  final Widget loginOptions;
  final Widget loginButton;
  final Widget buttonDivider;
  final Widget thirdPartyButtons;
  final Widget footer;
  final Widget subFooter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 16.0),
          child: Column(
            children: <Widget>[
              header,
              const SizedBox(height: 24.0),
              textFields,
              const SizedBox(height: 16.0),
              loginOptions,
              const SizedBox(height: 24.0),
              loginButton,
              const SizedBox(height: 24.0),
              buttonDivider,
              const SizedBox(height: 16.0),
              thirdPartyButtons,
              const SizedBox(height: 16.0),
              footer,
              const SizedBox(height: 16.0),
              subFooter,
            ],
          ),
        ),
      ),
    );
  }
}