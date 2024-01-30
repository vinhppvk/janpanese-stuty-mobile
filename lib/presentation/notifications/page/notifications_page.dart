import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/style/font_style.dart';
import '../../../app/utils/extension/build_context.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../app/widget/tabbar/custom_tabbar.dart';
import '../../../data/model/entity/response/notifications/personal_notification_result.dart';
import '../../../data/model/entity/response/notifications/system_notification_result.dart';
import 'personal_notifications_view.dart';
import 'system_notifications_view.dart';

part '../widget/notifications/scaffold.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late List<SystemNotificationResult> _systemNotifications;
  late List<PersonalNotificationResult> _personalNotifications;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _systemNotifications = SystemNotificationResult.mockData;
    _personalNotifications = PersonalNotificationResult.mockData;
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      appBar: CustomAppBar(
        title: const Text('Notifications'),
        onBackPressed: () => context.pop(),
      ),
      tabbar: CustomTabbar(
        controller: _tabController,
        tabs: const <Widget>[
          Tab(
            text: 'System',
          ),
          Tab(
            text: 'Personal',
          ),
        ],
      ),
      header: Text(
        '1 Unread notification',
        style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.bold),
      ),
      tabbarView: Expanded(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            SystemNotificationsView(dataList: _systemNotifications),
            PersonalNotificationsView(dataList: _personalNotifications),
          ],
        ),
      ),
    );
  }
}
