import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/local/local_data_source_keys.dart';

class AuthenticationInterceptor extends Interceptor {
  AuthenticationInterceptor(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? accessToken =
        _sharedPreferences.getString(LocalDataSourceKeys.accessToken);
    options.headers['Authorization'] = 'Bearer $accessToken';
    handler.next(options);
  }
}
