part of '../../page/teacher_detail_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.appBar,
    required this.videoPlayer,
    required this.sectionHeader,
    required this.tabbarView,
    required this.bottomFooter,
  });

  final PreferredSizeWidget appBar;
  final Widget videoPlayer;
  final Widget sectionHeader;
  final Widget tabbarView;
  final Widget bottomFooter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (_, __) {
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: videoPlayer,
                    ),
                    SliverToBoxAdapter(
                      child: sectionHeader,
                    ),
                  ];
                },
                body: tabbarView,
              ),
            ),
            bottomFooter,
          ],
        ),
      ),
    );
  }
}
