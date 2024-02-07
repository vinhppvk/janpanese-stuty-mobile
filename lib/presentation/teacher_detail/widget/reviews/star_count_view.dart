part of '../../page/sub_views/reviews_page.dart';

class _StarCountView extends StatelessWidget {
  const _StarCountView({
    required this.totalRatingCount,
    required this.starCounts,
  });

  final int totalRatingCount;
  final List<({int count, String title})> starCounts;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TTextStyle.getBodyXSmall(
        fontWeight: TFontWeight.medium,
        color: context.colorScheme.surface,
      ),
      child: Row(
        children: <Widget>[
          _buildLeadingColumn(),
          _buildIndicatorColumn(),
          _buildTrailingColumn()
        ],
      ),
    );
  }

  Widget _buildLeadingColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: starCounts
          .map((({int count, String title}) record) => Text(record.title))
          .toList(),
    ).withSpacing(spacing: 4.0);
  }

  Widget _buildIndicatorColumn() {
    return Expanded(
      child: Column(
        children: starCounts.map(
          (({int count, String title}) record) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
              child: LinearProgressIndicator(
                value: record.count / totalRatingCount,
                color: TColor.mikadoYellow,
                backgroundColor: TColor.grey400,
                minHeight: 8.0,
                borderRadius: BorderRadius.circular(4.0),
              ),
            );
          },
        ).toList(),
      ).withSpacing(spacing: 4.0),
    );
  }

  Widget _buildTrailingColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: starCounts
          .map(
            (({int count, String title}) record) => Text(
                '${record.count.getShortForm()} / ${totalRatingCount.getShortForm()}'),
          )
          .toList(),
    ).withSpacing(spacing: 4.0);
  }
}
