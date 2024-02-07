part of '../../page/teacher_detail_page.dart';

class _LessonCreditChip extends StatelessWidget {
  const _LessonCreditChip({
    required this.amount,
  });

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      labelPadding: const EdgeInsets.only(left: 4.0),
      backgroundColor: TColor.grey100,
      side: BorderSide.none,
      labelStyle: TTextStyle.getBodyMedium(
        fontWeight: TFontWeight.medium,
        color: context.colorScheme.primary,
      ),
      label: Text(amount),
      avatar: SvgPicture.asset(
        IconAsset.books,
        width: 20.0,
        height: 20.0,
        colorFilter: ColorFilter.mode(
          context.colorScheme.primary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
