import 'package:flutter/material.dart';

import '../../../../app/theme/style/color.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../data/model/entity/response/teacher_detail/teacher_detail_about_me.dart';

part '../../widget/about_me/list_tile.dart';

class TeacherDetailAboutMeView extends StatelessWidget {
  const TeacherDetailAboutMeView({
    super.key,
    required this.dataList,
  });

  final List<TeacherDetailAboutMe> dataList;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24.0),
      sliver: SliverList.separated(
        itemCount: dataList.length,
        itemBuilder: (_, int index) => _ListTile(
          title: dataList[index].title,
          message: dataList[index].message,
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 16.0),
      ),
    );
  }
}
