part of '../../page/search_teacher_filter_bottom_sheet.dart';

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({
    this.primaryAction,
    this.secondaryAction,
  });

  final VoidCallback? primaryAction;
  final VoidCallback? secondaryAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: SecondaryButton(
              onPressed: secondaryAction,
              child: const Text('Reset Filters'),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: PrimaryButton(
              onPressed: primaryAction,
              child: const Text('Apply Filters'),
            ),
          ),
        ],
      ),
    );
  }
}
