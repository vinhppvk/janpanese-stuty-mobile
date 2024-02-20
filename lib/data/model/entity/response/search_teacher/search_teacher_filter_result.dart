import '../../../../../app/utils/constant/date_formats.dart';
import '../../../../../app/utils/extension/date_time.dart';
import '../../enum/booking_date.dart';

class SearchTeacherFilterResult {
  SearchTeacherFilterResult({
    required this.dates,
    required this.courses,
  });

  final List<SearchTeacherFilterDate> dates;
  final List<String> courses;

  static SearchTeacherFilterResult mockData = SearchTeacherFilterResult(
    dates: <SearchTeacherFilterDate>[
      SearchTeacherFilterDate(text: '2024-02-19'),
      SearchTeacherFilterDate(text: '2024-02-20'),
      SearchTeacherFilterDate(text: '2024-02-21'),
      SearchTeacherFilterDate(text: '2024-02-22'),
      SearchTeacherFilterDate(text: '2024-02-23'),
      SearchTeacherFilterDate(text: '2024-02-24'),
      SearchTeacherFilterDate(text: '2024-02-25'),
    ],
    courses: List<String>.generate(5, (int index) => 'Course $index'),
  );
}

class SearchTeacherFilterDate {
  SearchTeacherFilterDate({required this.text});

  final String text;

  DateTime? get dateTime =>
      text.parseToDate(pattern: DateFormats.serverDefaultFormat);

  String get displayText =>
      (dateTime?.format(pattern: DateFormats.bookingDateFormat)).toString();

  BookingDate get bookingDate => BookingDate.fromWeekday(dateTime?.weekday);
}
