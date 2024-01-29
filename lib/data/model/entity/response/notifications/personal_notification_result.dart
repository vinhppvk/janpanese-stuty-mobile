import 'dart:math';

import 'notification_result.dart';

class PersonalNotificationResult implements NotificationResult {
  PersonalNotificationResult({
    required this.title,
    required this.description,
    required this.dateTime,
    required this.isRead,
    required this.imagePhoto,
    required this.senderEmail,
  });

  @override
  final String title;

  @override
  final String description;

  @override
  final String dateTime;

  final String? imagePhoto;
  final String senderEmail;
  final bool isRead;

  static List<PersonalNotificationResult> mockData =
      List<PersonalNotificationResult>.generate(
    20,
    (int index) => PersonalNotificationResult(
      title: 'Title ${index + 1}',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur quam odio, molestie ac varius nec, bibendum a velit. In hac habitasse platea dictumst. Vestibulum faucibus mollis',
      dateTime: 'Aug 2, 2023 01:15',
      isRead: Random().nextBool(),
      imagePhoto: 'https://picsum.photos/250?image=13',
      senderEmail: 'Admin@gmail.com',
    ),
  );
}
