import 'package:flutter/material.dart';

import '../../../../data/model/entity/enum/course_level.dart';
import '../../../utils/extension/spacing_extension.dart';

class CourseLevelGrid extends StatelessWidget {
  const CourseLevelGrid({
    super.key,
    this.spacing = 8.0,
    required this.itemBuilder,
  });

  static List<CourseLevel> courseLevels = CourseLevel.values;

  final double spacing;
  final Widget Function(BuildContext context, CourseLevel courseLevel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        courseLevels.length,
        (int index) => Expanded(
          child: itemBuilder(context, courseLevels[index]),
        ),
      ),
    ).withSpacing(spacing: spacing);
  }
}
