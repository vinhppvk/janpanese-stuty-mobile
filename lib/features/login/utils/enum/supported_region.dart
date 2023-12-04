import '../../../../core/config/asset/icon_asset.dart';

enum SupportedRegion { america, vietnam, indonesia }

extension SupportedRegionX on SupportedRegion {
  String get countryName => switch (this) {
    SupportedRegion.america => 'America',
    SupportedRegion.vietnam => 'Viet Nam',
    SupportedRegion.indonesia => 'Indonesia',
  };

  String get flagAssetName => switch (this) {
    SupportedRegion.america => IconAsset.americaFlag,
    SupportedRegion.vietnam => IconAsset.vietnamFlag,
    SupportedRegion.indonesia => IconAsset.indonesiaFlag,
  };
}
