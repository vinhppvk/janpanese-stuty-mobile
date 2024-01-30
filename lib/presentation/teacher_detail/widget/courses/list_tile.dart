import 'package:flutter/material.dart';

import '../../../../app/theme/style/color.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../app/widget/card/outline_card.dart';
import '../../../../app/widget/grid/course_level/course_level_grid.dart';
import '../../../../app/widget/grid/course_level/course_level_item.dart';
import '../../../../data/model/entity/enum/course_level.dart';
import '../../../../data/model/entity/response/teacher_detail/teacher_detail_course.dart';

class TeacherDetailCourseCard extends StatelessWidget {
  const TeacherDetailCourseCard({
    super.key,
    required this.data,
    this.onTap,
  });

  final TeacherDetailCourse data;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedBorderCard(
      onTap: onTap,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.asset(
              data.imagePhoto,
              width: 95,
              height: 135.0,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: _Body(data: data),
          )
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.data,
  });

  final TeacherDetailCourse data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          data.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        CourseLevelGrid(
          itemBuilder: (BuildContext context, CourseLevel courseLevel) {
            return CourseLevelItem(
              highlight: data.level.contains(courseLevel),
              label: Text(courseLevel.displayText),
            );
          },
        ),
        const SizedBox(height: 8.0),
        Text(
          data.description,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.medium,
            color: TColor.grey600,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          '${data.lessonCount} Lesson',
          style: TTextStyle.getBodySmall(color: TColor.grey500),
        ),
      ],
    );
  }
}
