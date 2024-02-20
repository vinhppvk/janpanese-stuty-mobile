part of '../../page/search_teacher_filter_bottom_sheet.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.appbar,
    required this.dateGridView,
    required this.timePeriodView,
    required this.courseDropDown,
    required this.bottomNavigation,
  });

  final Widget appbar;
  final Widget dateGridView;
  final Widget timePeriodView;
  final Widget courseDropDown;
  final Widget bottomNavigation;

  @override
  Widget build(BuildContext context) {
    return BottomSheetScaffold(
      appbar: appbar,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            dateGridView,
            const SizedBox(height: 24.0),
            timePeriodView,
            const SizedBox(height: 24.0),
            courseDropDown,
          ],
        ),
      ),
      bottomNavigation: bottomNavigation,
    );
  }
}