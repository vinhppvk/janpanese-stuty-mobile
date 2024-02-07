import '../../../../../app/asset/image_asset.dart';
import '../../enum/course_level.dart';

class TeacherDetailCourse {
  TeacherDetailCourse({
    required this.imagePhoto,
    required this.title,
    required this.level,
    required this.description,
    required this.lessonCount,
  });

  final String imagePhoto;
  final String title;
  final List<CourseLevel> level;
  final String description;
  final int lessonCount;

  static const String _mockDescription =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit ull...';

  static List<TeacherDetailCourse> mockData =
      List<TeacherDetailCourse>.generate(
    20,
    (int index) => TeacherDetailCourse(
      imagePhoto: ImageAsset.placeholderLesson,
      title: 'Lesson $index',
      level: <CourseLevel>[CourseLevel.n5],
      description: _mockDescription,
      lessonCount: 25,
    ),
  );
}
