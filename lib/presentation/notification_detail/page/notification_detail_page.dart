import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/widget/app_bar/custom_app_bar.dart';
import '../../../data/model/entity/response/notifications/notification_result.dart';

part '../widget/scaffold.dart';

part '../widget/label_container.dart';

class NotificationDetailPage extends StatefulWidget {
  const NotificationDetailPage({
    super.key,
    required this.notificationData,
  });

  final NotificationResult notificationData;

  @override
  State<NotificationDetailPage> createState() => _NotificationDetailPageState();
}

class _NotificationDetailPageState extends State<NotificationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      appBar: CustomAppBar(
        title: const Text('Notification Detail'),
        onBackPressed: () => context.pop(),
      ),
      header: _LabelContainer(
        title: 'Title',
        child: Text(
          widget.notificationData.title,
          style: TTextStyle.getHeadingH4(),
        ),
      ),
      divider: const Divider(),
      body: _LabelContainer(
        title: 'Content',
        child: Text(
          widget.notificationData.description,
          style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.medium),
        ),
      ),
      footer: _LabelContainer(
        title: 'Date',
        child: Text(
          widget.notificationData.dateTime,
          style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
        ),
      ),
    );
  }
}
