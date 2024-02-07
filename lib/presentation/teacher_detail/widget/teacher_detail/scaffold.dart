part of '../../page/teacher_detail_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.appBar,
    required this.videoPlayer,
    required this.sectionHeader,
    required this.sliverTabView,
    required this.bottomFooter,
  });

  final PreferredSizeWidget appBar;
  final Widget videoPlayer;
  final Widget sectionHeader;
  final Widget sliverTabView;
  final Widget bottomFooter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: videoPlayer,
                  ),
                  SliverToBoxAdapter(
                    child: sectionHeader,
                  ),
                  sliverTabView,
                ],
              ),
            ),
            bottomFooter,
          ],
        ),
      ),
    );
  }
}
