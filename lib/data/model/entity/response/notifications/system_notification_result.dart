import 'dart:math';

import 'notification_result.dart';

class SystemNotificationResult implements NotificationResult {
  SystemNotificationResult({
    required this.title,
    required this.description,
    required this.dateTime,
    required this.isRead,
  });

  @override
  final String title;

  @override
  final String description;

  @override
  final String dateTime;

  final bool isRead;

  static List<SystemNotificationResult> mockData =
      List<SystemNotificationResult>.generate(
    20,
    (int index) => SystemNotificationResult(
      title: 'Title ${index + 1}',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur quam odio, molestie ac varius nec, bibendum a velit. In hac habitasse platea dictumst. Vestibulum faucibus mollis',
      dateTime: 'Aug 2, 2023 01:15',
      isRead: Random().nextBool(),
    ),
  );
}
