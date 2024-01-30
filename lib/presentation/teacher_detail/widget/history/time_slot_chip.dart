part of '../../page/sub_views/history_view.dart';

class _TimeSlotChip extends StatelessWidget {
  const _TimeSlotChip({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: TColor.success1000,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        text,
        style: TTextStyle.getBodyMedium(
          fontWeight: TFontWeight.medium,
          color: context.colorScheme.surface,
        ),
      ),
    );
  }
}
