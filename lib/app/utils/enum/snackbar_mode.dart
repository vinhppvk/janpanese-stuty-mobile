import '../../asset/icon_asset.dart';

enum SnackBarMode {
  success(IconAsset.checkCircle),
  error(IconAsset.banCircle),
  information(IconAsset.infoCircle);

  const SnackBarMode(this.iconAsset);

  final String iconAsset;
}
