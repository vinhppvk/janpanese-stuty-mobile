part of '../../page/sub_views/history_view.dart';

class _ListTile extends StatelessWidget {
  const _ListTile({required this.data});

  final TeacherDetailHistory data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: TColor.success100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            data.lessonName,
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.bold,
              color: TColor.success1000,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            data.courseName,
            style: TTextStyle.getBodySmall(
              fontWeight: TFontWeight.medium,
              color: TColor.success1000,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                data.bookingDate.format(pattern: DateFormats.mMMMddyyyy),
                style: TTextStyle.getBodySmall(color: TColor.success750),
              ),
              _TimeSlotChip(text: data.timeSlot)
            ],
          )
        ],
      ),
    );
  }
}
