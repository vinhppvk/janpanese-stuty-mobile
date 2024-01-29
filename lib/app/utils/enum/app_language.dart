import 'package:flag/flag.dart';


enum AppLanguage {
  america,
  vietnam,
  indonesia;

  static AppLanguage? fromCountryName(String? name) => switch (name) {
        'America' => AppLanguage.america,
        'Viet Nam' => AppLanguage.vietnam,
        'Indonesia' => AppLanguage.indonesia,
        _ => null,
      };

  static AppLanguage get defaultLanguage => AppLanguage.america;
}

extension AppLanguageX on AppLanguage {
  String get countryName => switch (this) {
        AppLanguage.america => 'America',
        AppLanguage.vietnam => 'Viet Nam',
        AppLanguage.indonesia => 'Indonesia',
      };

  FlagsCode get flagsCode => switch (this) {
        AppLanguage.america => FlagsCode.UM,
        AppLanguage.vietnam => FlagsCode.VN,
        AppLanguage.indonesia => FlagsCode.ID,
      };
}
