class TeacherDetailAboutMe {
  TeacherDetailAboutMe({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  static String mockMessage =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit rhoncus ante non iaculis. Aliquam sit amet enim molestie, consequat orci pretium,';

  static List<TeacherDetailAboutMe> mockData = <TeacherDetailAboutMe>[
    TeacherDetailAboutMe(
      title: 'Self-introduction',
      message: mockMessage,
    ),
    TeacherDetailAboutMe(
      title: 'Introduction from the staff',
      message: mockMessage,
    ),
    TeacherDetailAboutMe(
      title: 'Teaching experience',
      message: mockMessage,
    ),
  ];
}
