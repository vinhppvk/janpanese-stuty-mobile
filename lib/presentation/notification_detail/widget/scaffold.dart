part of '../page/notification_detail_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.appBar,
    required this.header,
    required this.divider,
    required this.body,
    required this.footer,
  });

  final PreferredSizeWidget appBar;
  final Widget header;
  final Widget divider;
  final Widget body;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Wrap(
          runSpacing: 16.0,
          children: <Widget>[
            header,
            divider,
            body,
            footer,
          ],
        ),
      ),
    );
  }
}