import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../app/asset/icon_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../data/model/entity/response/notifications/personal_notification_result.dart';
import '../../../router/router_info.dart';
import '../widget/empty_view.dart';
import '../widget/notification_card.dart';

part '../widget/personal_notifications/personal_notifications_tile.dart';

part '../widget/personal_notifications/leading_avatar.dart';

part '../widget/personal_notifications/trailing_title.dart';

class PersonalNotificationsView extends StatelessWidget {
  const PersonalNotificationsView({
    super.key,
    required this.dataList,
  });

  final List<PersonalNotificationResult> dataList;

  @override
  Widget build(BuildContext context) {
    return dataList.isNotEmpty
        ? _buildListView(context)
        : const EmptyNotificationView();
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (BuildContext context, int index) =>
          _PersonalNotificationTile(
        data: dataList[index],
        onTap: (PersonalNotificationResult data) => _onItemTap(context, data),
      ),
    );
  }

  void _onItemTap(BuildContext context, PersonalNotificationResult data) {
    context.pushNamed(RouterInfo.notificationDetailPage.name, extra: data);
  }
}
