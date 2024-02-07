import 'package:flutter/material.dart';

import '../../../../app/asset/image_asset.dart';
import '../../../../app/theme/style/color.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../app/utils/constant/date_formats.dart';
import '../../../../app/utils/extension/build_context.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../../../data/model/entity/response/teacher_detail/teacher_detail_history.dart';
import '../../widget/empty_view.dart';

part '../../widget/history/header.dart';

part '../../widget/history/list_tile.dart';

part '../../widget/history/time_slot_chip.dart';

class TeacherDetailHistoryView extends StatelessWidget {
  const TeacherDetailHistoryView({
    super.key,
    required this.dataList,
  });

  final List<TeacherDetailHistory> dataList;

  @override
  Widget build(BuildContext context) {
    if (dataList.isEmpty) {
      return const SliverToBoxAdapter(
        child: TeacherDetailEmptyView(
          assetImage: ImageAsset.favoriteIllustration,
          text: 'No lesson history with this teacher',
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(24.0),
      sliver: SliverMainAxisGroup(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 16.0),
            sliver: SliverToBoxAdapter(
              child: _Header(historyCount: '${dataList.length}'),
            ),
          ),
          SliverList.separated(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) =>
                _ListTile(data: dataList[index]),
            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
          ),
        ],
      ),
    );
  }
}
