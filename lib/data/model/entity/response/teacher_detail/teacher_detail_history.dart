class TeacherDetailHistory {
  TeacherDetailHistory({
    required this.lessonName,
    required this.courseName,
    required this.bookingDate,
    required this.timeSlot,
  });

  final String lessonName;
  final String courseName;
  final DateTime bookingDate;
  final String timeSlot;

  static List<TeacherDetailHistory> mockData =
      List<TeacherDetailHistory>.generate(
    20,
    (int index) => TeacherDetailHistory(
        lessonName: 'Lesson $index',
        courseName: 'Course $index',
        bookingDate: DateTime.now(),
        timeSlot: '10:00 ~ 10:30'),
  );
}
