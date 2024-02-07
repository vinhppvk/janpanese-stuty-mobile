
import '../../../../../app/utils/constant/app_url.dart';

class TeacherDetailMainHeaderInformation {
  TeacherDetailMainHeaderInformation({
    required this.imagePhoto,
    required this.userName,
    required this.age,
    required this.nationality,
    required this.flagCode,
    required this.email,
  });

  final String imagePhoto;
  final String userName;
  final int age;
  final String nationality;
  final String flagCode;
  final String email;

  static TeacherDetailMainHeaderInformation mockData =
      TeacherDetailMainHeaderInformation(
          imagePhoto: AppUrl.placeholderImageUrl,
          userName: 'John Appleseed',
          age: 99,
          nationality: 'Japan',
          flagCode: 'jp',
          email: 'teacher@gmail.com');
}

class TeacherDetailSubHeaderInformation {
  TeacherDetailSubHeaderInformation({
    required this.lessonsTaughtCount,
    required this.courseCount,
    required this.reservationCount,
  });

  final int lessonsTaughtCount;
  final int courseCount;
  final int reservationCount;

  static TeacherDetailSubHeaderInformation mockData =
      TeacherDetailSubHeaderInformation(
          lessonsTaughtCount: 400000, courseCount: 3, reservationCount: 0);
}
