import 'teacher_detail_about_me.dart';
import 'teacher_detail_course.dart';
import 'teacher_detail_header_info.dart';
import 'teacher_detail_history.dart';
import 'teacher_detail_review.dart';

class TeacherDetailResult {
  TeacherDetailResult({
    required this.videoUrl,
    required this.headerInformation,
    required this.subHeaderInformation,
    required this.aboutMeList,
    required this.courseList,
    required this.historyList,
    required this.reviewData,
  });

  final String videoUrl;
  final TeacherDetailMainHeaderInformation headerInformation;
  final TeacherDetailSubHeaderInformation subHeaderInformation;
  final List<TeacherDetailAboutMe> aboutMeList;
  final List<TeacherDetailCourse> courseList;
  final List<TeacherDetailHistory> historyList;
  final TeacherDetailReview reviewData;

  static TeacherDetailResult mockData = TeacherDetailResult(
      videoUrl: 'https://www.youtube.com/embed/jNQXAC9IVRw?si=ewBSLlqRwH-UGuUV',
      headerInformation: TeacherDetailMainHeaderInformation.mockData,
      subHeaderInformation: TeacherDetailSubHeaderInformation.mockData,
      aboutMeList: TeacherDetailAboutMe.mockData,
      courseList: TeacherDetailCourse.mockData,
      historyList: TeacherDetailHistory.mockData,
      reviewData: TeacherDetailReview.mockData);
}
