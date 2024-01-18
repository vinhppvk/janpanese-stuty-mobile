import 'dart:io';

import 'package:dio/dio.dart';

import '../../../app/utils/constant/failure_messages.dart';
import '../../../data/model/dto/base/base_response.dart';
import '../../error/exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.cancel:
        throw NoConnectionException(message: FailureMessages.noConnection);
      case DioExceptionType.connectionError:
        if (err.error is SocketException) {
          throw NoConnectionException(message: FailureMessages.noConnection);
        }
      case DioExceptionType.badResponse:
        _throwHttpException(err);
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        throw UndefinedException(message: FailureMessages.undefined);
    }

    super.onError(err, handler);
  }

  void _throwHttpException(DioException exception) {
    final Response<dynamic>? response = exception.response;
    if (response != null) {
      final BaseResponse<Object?> responseData = BaseResponse<Object?>.fromJson(
        response.data,
        (Object? jsonT) => jsonT,
      );
      final String message = responseData.message;
      switch (response.statusCode) {
        case 400:
          throw HttpBadRequestException(
            message: message,
            data: responseData.data,
          );
        case 401:
          throw HttpUnauthorizedException(message: message);
        case 403:
          throw HttpForbiddenException(message: message);
        case 404:
          throw HttpNotFoundException(message: message);
        case 405:
          throw HttpMethodNotAllowedException(message: message);
        case 409:
          throw HttpConflictException(message: message);
        case 422:
          throw HttpUnprocessableEntityException(message: message);
        case 500:
          throw HttpInternalServerErrorException(message: message);
        default:
          throw UndefinedException();
      }
    }
  }
}
