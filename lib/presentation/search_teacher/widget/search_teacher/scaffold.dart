part of '../../page/search_teacher_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.scaffoldKey,
    required this.appBar,
    required this.body,
  });

  final Key? scaffoldKey;
  final PreferredSizeWidget appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: appBar,
      body: SafeArea(child: body),
    );
  }
}
