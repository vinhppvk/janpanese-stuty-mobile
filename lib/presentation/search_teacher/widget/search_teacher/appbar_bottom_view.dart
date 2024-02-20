part of '../../page/search_teacher_page.dart';

class _AppbarBottomView extends StatelessWidget implements PreferredSizeWidget {
  const _AppbarBottomView({
    required this.listCount,
    required this.enableFilter,
    this.onFilterPressed,
  });

  final int listCount;
  final bool enableFilter;
  final VoidCallback? onFilterPressed;

  @override
  Size get preferredSize => const Size.fromHeight(62.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text.rich(
            style: TTextStyle.getBodyLarge(color: TColor.grey500),
            TextSpan(
              children: <InlineSpan>[
                const TextSpan(text: 'Showing '),
                TextSpan(
                  text: listCount.toString(),
                  style: TTextStyle.getBodyLarge(
                    fontWeight: TFontWeight.medium,
                    color: TColor.grey900,
                  ),
                ),
                const TextSpan(text: ' results'),
              ],
            ),
          ),
          OutlineTonalChip(
            label: const Text('Filter'),
            avatarAsset: IconAsset.funnelSimple,
            selected: enableFilter,
            onPressed: onFilterPressed,
          ),
        ],
      ),
    );
  }
}
