import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  Logger logger = Logger(
    // Customize the printer
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final RequestOptions options = err.requestOptions;
    final String requestPath = '${options.baseUrl}${options.path}';
    logger.e('${options.method} request => $requestPath'); // Error log
    logger.d('Error: ${err.error}, Message: ${err.message}'); // Debug log
    logger.d('Error Data => ${formatJson(err.response?.data)}'); // Debug log
    return super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String requestPath = '${options.baseUrl}${options.path}';
    logger.i('${options.method} request => $requestPath'); // Info log
    logger.i('headers => ${formatJson(options.headers)}'); // Info log
    logger.i('body => ${formatJson(options.data)}'); // Info log
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    logger.d(
        'Status Code: ${response.statusCode}\nData: ${formatJson(response.data)}'); // Debug log
    return super.onResponse(response, handler);
  }

  String formatJson(Object? json) {
    return JsonEncoder.withIndent(' ' * 3).convert(json);
  }
}
