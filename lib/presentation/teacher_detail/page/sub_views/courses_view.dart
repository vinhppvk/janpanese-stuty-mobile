import 'package:flutter/material.dart';

import '../../../../app/asset/image_asset.dart';
import '../../../../data/model/entity/response/teacher_detail/teacher_detail_course.dart';
import '../../widget/courses/list_tile.dart';
import '../../widget/empty_view.dart';

class TeacherDetailCoursesView extends StatelessWidget {
  const TeacherDetailCoursesView({
    super.key,
    required this.dataList,
  });

  final List<TeacherDetailCourse> dataList;

  @override
  Widget build(BuildContext context) {
    if (dataList.isEmpty) {
      return const SingleChildScrollView(
        child: TeacherDetailEmptyView(
          assetImage: ImageAsset.notFoundIllustration,
          text: 'No results found',
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(24.0),
      itemCount: dataList.length,
      itemBuilder: (BuildContext context, int index) =>
          TeacherDetailCourseCard(data: dataList[index]),
      separatorBuilder: (_, __) => const SizedBox(height: 24.0),
    );
  }
}
