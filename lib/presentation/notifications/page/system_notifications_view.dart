import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../data/model/entity/response/notifications/system_notification_result.dart';
import '../../../router/router_info.dart';
import '../widget/empty_view.dart';
import '../widget/notification_card.dart';

part '../widget/system_notifications/system_notifications_tile.dart';

class SystemNotificationsView extends StatelessWidget {
  const SystemNotificationsView({
    super.key,
    required this.dataList,
  });

  final List<SystemNotificationResult> dataList;

  @override
  Widget build(BuildContext context) {
    return dataList.isNotEmpty
        ? _buildListView()
        : const EmptyNotificationView();
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (BuildContext context, int index) => _SystemNotificationTile(
        data: dataList[index],
        onTap: (SystemNotificationResult data) => _onItemTap(context, data),
      ),
    );
  }

  void _onItemTap(BuildContext context, SystemNotificationResult data) {
    context.pushNamed(RouterInfo.notificationDetailPage.name, extra: data);
  }
}
