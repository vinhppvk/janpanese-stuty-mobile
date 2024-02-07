part of '../../page/teacher_detail_page.dart';

class _SubHeader extends StatelessWidget {
  const _SubHeader({required this.recordList});

  final List<({String title, int count})> recordList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: recordList
            .map(
              (({String title, int count}) record) => _SubHeaderItem(
                title: record.title,
                count: record.count.getShortForm(),
              ),
            )
            .toList(),
      ).withSeparator(
        separator: const VerticalDivider(
          width: 16.0,
          indent: 5.0,
          endIndent: 5.0,
          color: TColor.grey500,
        ),
      ),
    );
  }
}

class _SubHeaderItem extends StatelessWidget {
  const _SubHeaderItem({
    required this.title,
    required this.count,
  });

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(
            count,
            style: TTextStyle.getBodyLarge(
              fontWeight: TFontWeight.bold,
              color: context.colorScheme.surface,
            ),
          ),
          Text(
            title,
            style: TTextStyle.getBodySmall(
              color: TColor.grey300,
            ),
          ),
        ],
      ),
    );
  }
}
