part of '../../page/search_teacher_filter_bottom_sheet.dart';

class _DateGrid extends StatelessWidget {
  const _DateGrid({
    required this.dataSource,
    required this.selectedDates,
    required this.onTap,
  });

  final List<SearchTeacherFilterDate> dataSource;
  final List<SearchTeacherFilterDate> selectedDates;
  final Function(SearchTeacherFilterDate date, bool selected) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFieldContainer(
        title: const Text('Date'),
        child: Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          children: dataSource.map((SearchTeacherFilterDate date) {
            final bool selected = selectedDates.contains(date);
            final BookingDate bookingDate = date.bookingDate;

            return OutlineTonalChip(
              label: Text(date.displayText),
              selected: selected,
              shape: const StadiumBorder(),
              normalTintColor: bookingDate.normalTintColor,
              selectedTintColor: bookingDate.selectedTintColor,
              selectedBackgroundColor: bookingDate.backgroundColor,
              selectedBorderColor: bookingDate.borderColor,
              onPressed: () => onTap(date, selected),
            );
          }).toList(),
        ),
      ),
    );
  }
}