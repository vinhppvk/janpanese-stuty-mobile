part of '../../page/notifications_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.appBar,
    required this.tabbar,
    required this.header,
    required this.tabbarView,
  });

  final PreferredSizeWidget appBar;
  final Widget tabbar;
  final Widget header;
  final Widget tabbarView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              border: Border(
                bottom: BorderSide(
                  width: 1.5,
                  color: context.theme.dividerColor,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                tabbar,
                const SizedBox(height: 12.0),
                header,
              ],
            ),
          ),
          tabbarView,
        ],
      ),
    );
  }
}
