
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../error/exception.dart';
import '../error/failure.dart';

mixin ErrorMapper {
  Failure<V> mapDioExceptionToFailure<V>(DioException dioException,
      {V? Function(Map<String, dynamic> json)? fromJson}) {
    switch (dioException.error) {
      case NoConnectionException _:
        return Failure<V>.noConnection(
            message: (dioException.error! as InAppException).message);
      case final HttpBadRequestException exception:
        return Failure<V>.httpBadRequest(
          message: exception.message,
          data: exception.data != null
              ? fromJson?.call(exception.data! as Map<String, dynamic>)
              : null,
        );
      case HttpUnauthorizedException _:
        return Failure<V>.httpUnauthorized(
            message: (dioException.error! as InAppException).message);
      case HttpForbiddenException _:
        return Failure<V>.httpForbidden(
            message: (dioException.error! as InAppException).message);
      case HttpNotFoundException _:
        return Failure<V>.httpNotFound(
            message: (dioException.error! as InAppException).message);
      case HttpUnprocessableEntityException _:
        return Failure<V>.httpUnprocessableEntity(
            message: (dioException.error! as InAppException).message);
      case HttpMethodNotAllowedException _:
        return Failure<V>.httpMethodNotAllowed(
            message: (dioException.error! as InAppException).message);
      case HttpConflictException _:
        return Failure<V>.httpConflict(
            message: (dioException.error! as InAppException).message);
      case HttpInternalServerErrorException _:
        return Failure<V>.httpInternalServerError(
            message: (dioException.error! as InAppException).message);
      default:
        return Failure<V>.httpInternalServerError();
    }
  }

  Failure<V> mapInAppExceptionFailure<V>(InAppException exception) {
    switch (exception) {
      default:
        return Failure<V>.undefined();
    }
  }

  Failure<V> mapExceptionToFailure<V>(Exception exception) {
    switch (exception) {
      case BadKeyException _:
        return Failure<V>.badKeyOfValue(message: exception.message);
      default:
        return Failure<V>.undefined();
    }
  }

  Failure<T> mapFailure<T, V>(Failure<V> failure,
      {T? Function(V? data)? mapValidationData}) {
    return failure.map<Failure<T>>(
      undefined: (UndefinedFailure<V> localFailure) {
        return Failure<T>.undefined(message: localFailure.message);
      },
      noConnection: (NoConnectionFailure<V> localFailure) {
        return Failure<T>.noConnection(message: localFailure.message);
      },
      httpBadRequest: (HttpBadRequestFailure<V> localFailure) {
        return Failure<T>.httpBadRequest(
          message: localFailure.message,
          data: mapValidationData?.call(localFailure.data),
        );
      },
      httpUnauthorized: (HttpUnauthorizedFailure<V> localFailure) {
        return Failure<T>.httpUnauthorized(message: localFailure.message);
      },
      httpForbidden: (HttpForbiddenFailure<V> localFailure) {
        return Failure<T>.httpForbidden(message: localFailure.message);
      },
      httpNotFound: (HttpNotFoundFailure<V> localFailure) {
        return Failure<T>.httpNotFound(message: localFailure.message);
      },
      httpUnprocessableEntity:
          (HttpUnprocessableEntityFailure<V> localFailure) {
        return Failure<T>.httpUnprocessableEntity(
            message: localFailure.message);
      },
      httpInternalServerError:
          (HttpInternalServerErrorFailure<V> localFailure) {
        return Failure<T>.httpInternalServerError(
            message: localFailure.message);
      },
      httpMethodNotAllowed: (HttpMethodNotAllowedFailure<V> localFailure) {
        return Failure<T>.httpMethodNotAllowed(message: localFailure.message);
      },
      httpConflict: (HttpConflictErrorFailure<V> localFailure) {
        return Failure<T>.httpConflict(message: localFailure.message);
      },
      badKeyOfValue: (BadKeyOfValueFailure<V> localFailure) {
        return Failure<T>.badKeyOfValue(message: localFailure.message);
      },
    );
  }
}
