part of '../../page/sub_views/history_view.dart';

class _Header extends StatelessWidget {
  const _Header({
    required this.historyCount,
  });

  final String historyCount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: TTextStyle.getBodyMedium(
        fontWeight: TFontWeight.medium,
        color: TColor.grey500,
      ),
      TextSpan(
        children: <InlineSpan>[
          const TextSpan(text: 'Showing '),
          TextSpan(
            text: historyCount,
            style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.bold),
          ),
          const TextSpan(text: ' lesson history'),
        ],
      ),
    );
  }
}
