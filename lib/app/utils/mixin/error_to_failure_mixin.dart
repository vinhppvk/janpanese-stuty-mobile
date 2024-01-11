import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failure.dart';
import '../constant/failure_messages.dart';

mixin ErrorToFailureMixin {
  Either<Failure, T> mapDioExceptionToFailure<T>(DioException exception) {
    if (exception.error is SocketException) {
      return Either<Failure, T>.left(
        const NoConnectionFailure(message: FailureMessages.noConnection),
      );
    }

    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
        return Either<Failure, T>.left(
          const NoConnectionFailure(message: FailureMessages.noConnection),
        );
      case DioExceptionType.badResponse:
        final Failure? httpFailure = _mapHttpErrorToFailure(exception);
        if (httpFailure != null) {
          return Either<Failure, T>.left(httpFailure);
        }
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        break;
    }

    return Either<Failure, T>.left(
      const HttpInternalServerErrorFailure(
          message: FailureMessages.httpInternalServerError),
    );
  }

  Failure? _mapHttpErrorToFailure(DioException exception) {
    final Response<dynamic>? response = exception.response;
    if (response != null) {
      switch (response.statusCode) {
        case 400:
          return const HttpBadRequestFailure(
            message: FailureMessages.httpBadRequest,
          );
        case 401:
          return const HttpUnauthorizedFailure(
            message: FailureMessages.httpUnauthorized,
          );
        case 403:
          return const HttpForbiddenFailure(
            message: FailureMessages.httpForbidden,
          );
        case 404:
          return const HttpNotFoundFailure(
            message: FailureMessages.httpNotFound,
          );
        case 422:
          return const HttpUnprocessableEntityFailure(
            message: FailureMessages.httpUnauthorized,
          );
        case 500:
          return const HttpInternalServerErrorFailure(
            message: FailureMessages.httpInternalServerError,
          );
        default:
          return const UndefinedFailure(
            message: FailureMessages.undefined,
          );
      }
    }
    return null;
  }

  Either<Failure, T> mapExceptionToFailure<T>(Exception exception) {
    switch (exception) {
      case BadKeyException _:
        return Either<Failure, T>.left(const BadKeyOfValueFailure(message: FailureMessages.badKeyOfValue));
      default:
        return Either<Failure, T>.left(const UndefinedFailure(message: FailureMessages.undefined));
    }
  }
}
