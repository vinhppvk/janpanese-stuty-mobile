import 'package:flutter/material.dart';

import '../../../../app/asset/image_asset.dart';
import '../../../../app/theme/style/color.dart';
import '../../../../app/theme/style/font_style.dart';
import '../../../../app/utils/constant/date_formats.dart';
import '../../../../app/utils/extension/build_context.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../../../app/utils/extension/number.dart';
import '../../../../app/utils/extension/spacing_extension.dart';
import '../../../../app/widget/custom_network_image.dart';
import '../../../../app/widget/rating_bar/rating_bar.dart';
import '../../../../data/model/entity/response/teacher_detail/teacher_detail_review.dart';
import '../../widget/empty_view.dart';
import '../../widget/read_more_text.dart';

part '../../widget/reviews/rating_statistic_view.dart';

part '../../widget/reviews/star_count_view.dart';

part '../../widget/reviews/list_header.dart';

part '../../widget/reviews/list_tile.dart';

class TeacherDetailReviewsView extends StatelessWidget {
  const TeacherDetailReviewsView({
    super.key,
    required this.data,
  });

  final TeacherDetailReview data;

  @override
  Widget build(BuildContext context) {
    final Widget commentList = SliverList.separated(
      itemCount: data.comments.length,
      itemBuilder: (BuildContext context, int index) {
        return _CommentListTile(data: data.comments[index]);
      },
      separatorBuilder: (_, __) => const Divider(),
    );

    const Widget emptyWidget = SliverToBoxAdapter(
      child: TeacherDetailEmptyView(
        assetImage: ImageAsset.chatsIllustration,
        text: 'No comments yet.',
        padding: EdgeInsets.only(top: 24.0),
      ),
    );

    return SliverPadding(
      padding: const EdgeInsets.all(24.0),
      sliver: SliverMainAxisGroup(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 24.0),
            sliver: SliverToBoxAdapter(
              child: _RatingStatisticView(data: data),
            ),
          ),
          SliverToBoxAdapter(
            child: _CommentListHeader(reviewCount: data.comments.length),
          ),
          if (data.comments.isNotEmpty) commentList else emptyWidget,
        ],
      ),
    );
  }
}
