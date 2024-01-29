import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../error/exception.dart';

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
    final InAppException? error = err.error as InAppException?;

    logger.e('${options.method} request => $requestPath'); // Error log
    logger.d('Error: ${err.error}'); // Debug log

    if (error != null) {
      _logHttpError(error);
    }

    return super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String requestPath = '${options.baseUrl}${options.path}';
    logger.i('${options.method} request => $requestPath'); // Info log
    logger.i('headers => ${_formatJson(options.headers)}'); // Info log
    logger.i('body => ${_formatJson(options.data)}'); // Info log
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    logger.d(
        'Status Code: ${response.statusCode}\nData: ${_formatJson(response.data)}'); // Debug log
    return super.onResponse(response, handler);
  }

  String? _formatJson(Object? json) {
    try {
      return JsonEncoder.withIndent(' ' * 3).convert(json);
    } catch (e) {
      logger.e(e.toString());
      return null;
    }
  }

  void _logHttpError(InAppException exception) {
    String? exceptionData;
    switch (exception) {
      case HttpBadRequestException(data: final Object? data):
      case HttpUnauthorizedException(data: final Object? data):
      case HttpForbiddenException(data: final Object? data):
      case HttpNotFoundException(data: final Object? data):
      case HttpMethodNotAllowedException(data: final Object? data):
      case HttpConflictException(data: final Object? data):
      case HttpUnprocessableEntityException(data: final Object? data):
      case HttpInternalServerErrorException(data: final Object? data):
        exceptionData = _formatJson(data);
      default:
        break;
    }
    logger.d('Error Msg: ${exception.message}\nError Data: $exceptionData');
  }
}
