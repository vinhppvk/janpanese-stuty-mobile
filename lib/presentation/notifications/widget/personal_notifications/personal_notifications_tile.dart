part of '../../page/sub_views/personal_notifications_view.dart';

class _PersonalNotificationTile extends StatelessWidget {
  const _PersonalNotificationTile({
    required this.data,
    this.onTap,
  });

  final PersonalNotificationResult data;
  final Function(PersonalNotificationResult notification)? onTap;

  @override
  Widget build(BuildContext context) {
    final String title = data.title;
    final String senderEmail = data.senderEmail;
    return NotificationCard(
      backgroundColor: data.isRead ? null : TColor.primary100,
      onTap: () => onTap?.call(data),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              _LeadingAvatar(imageUrl: data.imagePhoto ?? ''),
              const SizedBox(width: 16.0),
              _TrailingTitle(title: title, senderEmail: senderEmail),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            data.description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TTextStyle.getBodySmall(fontWeight: TFontWeight.medium),
          ),
          const SizedBox(height: 12.0),
          Text(
            data.dateTime,
            style: TTextStyle.getBodySmall(color: TColor.grey500),
          ),
        ],
      ),
    );
  }
}
