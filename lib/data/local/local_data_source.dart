import 'package:shared_preferences/shared_preferences.dart';

import '../../app/utils/enum/app_language.dart';
import 'local_data_source_keys.dart';

class LocalDataSource {
  LocalDataSource(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  static const String emptyKeyException = 'Preference key is blank!';

  Future<bool> setValue(String key, Object? data) {
    if (key.isEmpty) {
      throw Exception(LocalDataSource.emptyKeyException);
    }
    if (data == null) {
      return _sharedPreferences.remove(key);
    }

    switch (data) {
      case int _:
        return _sharedPreferences.setInt(key, data);
      case bool _:
        return _sharedPreferences.setBool(key, data);
      case double _:
        return _sharedPreferences.setDouble(key, data);
      case String _:
        return _sharedPreferences.setString(key, data);
      case List<String> _:
        return _sharedPreferences.setStringList(key, data);
      default:
        throw Exception('Unsupported data type: ${data.runtimeType}');
    }
  }

  T? getValue<T>(String key) {
    if (key.isEmpty) {
      throw Exception(LocalDataSource.emptyKeyException);
    }
    return _sharedPreferences.get(key) as T?;
  }

  Future<bool> remove(String key) {
    if (key.isEmpty) {
      throw Exception(LocalDataSource.emptyKeyException);
    }
    return _sharedPreferences.remove(key);
  }

  Future<bool> clear() {
    // Temp save app preferences
    final AppLanguage? appLanguage = getLanguage();

    final Future<bool> clearResult = _sharedPreferences.clear();

    // Restore app preferences after clearing shared_preferences
    setLanguage(appLanguage ?? AppLanguage.defaultLanguage);

    return clearResult;
  }

  // App Preferences
  AppLanguage? getLanguage() =>
      AppLanguage.fromCountryName(getValue(LocalDataSourceKeys.appLanguage));

  Future<bool> setLanguage(AppLanguage appLanguage) =>
      setValue(LocalDataSourceKeys.appLanguage, appLanguage.countryName);
  // User Preferences
  Future<bool> setAccessToken(String accessToken) =>
      setValue(LocalDataSourceKeys.accessToken, accessToken);

  Future<bool> setRefreshToken(String refreshToken) =>
      setValue(LocalDataSourceKeys.refreshToken, refreshToken);

  Future<bool> setNickName(String nickName) =>
      setValue(LocalDataSourceKeys.nickName, nickName);

  Future<bool> setRememberMe(bool rememberMe) =>
      setValue(LocalDataSourceKeys.rememberMe, rememberMe);

  Future<bool> setEmail(String email) =>
      setValue(LocalDataSourceKeys.email, email);

  String? getAccessToken() => getValue(LocalDataSourceKeys.accessToken);

  String? getRefreshToken() => getValue(LocalDataSourceKeys.refreshToken);

  String? getNickName() => getValue(LocalDataSourceKeys.nickName);

  String? getEmail() => getValue(LocalDataSourceKeys.email);

  bool? getRememberMe() => getValue(LocalDataSourceKeys.rememberMe);

  Future<bool> setUpAppPreferences() async {
    final AppLanguage? appLanguage = getLanguage();

    if (appLanguage == null) {
      await setLanguage(AppLanguage.defaultLanguage);
    }

    return Future<bool>.value(true);
  }

  Future<bool> clearUserPreferencesIfNeeded() async {
    final bool? rememberMe = getRememberMe();

    if (rememberMe != null && !rememberMe) {
      await clear();
    }

    return Future<bool>.value(true);
  }
}
