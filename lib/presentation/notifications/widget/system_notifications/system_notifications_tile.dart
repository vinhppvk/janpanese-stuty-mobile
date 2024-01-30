part of '../../page/sub_views/system_notifications_view.dart';

class _SystemNotificationTile extends StatelessWidget {
  const _SystemNotificationTile({required this.data, this.onTap});

  final SystemNotificationResult data;
  final Function(SystemNotificationResult notification)? onTap;

  @override
  Widget build(BuildContext context) {
    return NotificationCard(
      backgroundColor: data.isRead ? null : TColor.primary100,
      onTap: () => onTap?.call(data),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            data.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TTextStyle.getHeadingH5(
              color: context.colorScheme.primary,
            ),
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
