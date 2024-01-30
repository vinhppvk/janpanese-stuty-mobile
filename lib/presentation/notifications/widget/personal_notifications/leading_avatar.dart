part of '../../page/sub_views/personal_notifications_view.dart';

class _LeadingAvatar extends StatelessWidget {
  const _LeadingAvatar({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: SizedBox.square(
        dimension: 40.0,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (_, __) => const _AvatarWidgetContainer(
            child: SizedBox.square(
              dimension: 24.0,
              child: CircularProgressIndicator(),
            ),
          ),
          errorWidget: (_, __, ___) => _AvatarWidgetContainer(
            child: SvgPicture.asset(IconAsset.sealWarning),
          ),
        ),
      ),
    );
  }
}

class _AvatarWidgetContainer extends StatelessWidget {
  const _AvatarWidgetContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColor.grey50,
      alignment: Alignment.center,
      child: child,
    );
  }
}
