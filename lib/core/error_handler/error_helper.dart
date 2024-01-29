import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../error/exception.dart';
import '../error/failure.dart';

mixin ErrorMapper {
  Failure<V> mapDioExceptionToFailure<V>(DioException dioException) {
    switch (dioException.error) {
      case NoConnectionException _:
        return Failure<V>.noConnection(
            message: (dioException.error! as InAppException).message);
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

  Failure<VOutput> mapFailure<VInput, VOutput>(Failure<VInput> failure,
      {VOutput? Function(VInput?)? convertHttpBadRequest}) {
    switch (failure) {
      case final NoConnectionFailure<VInput> noConnection:
        return NoConnectionFailure<VOutput>(message: noConnection.message);
      case final HttpBadRequestFailure<VInput> httpBadRequest:
        return HttpBadRequestFailure<VOutput>(
          message: httpBadRequest.message,
          data: convertHttpBadRequest?.call(httpBadRequest.data),
        );
      case final HttpUnauthorizedFailure<VInput> httpUnauthorized:
        return HttpUnauthorizedFailure<VOutput>(
            message: httpUnauthorized.message);
      case final HttpForbiddenFailure<VInput> httpForbidden:
        return HttpForbiddenFailure<VOutput>(message: httpForbidden.message);
      case final HttpNotFoundFailure<VInput> httpNotFound:
        return HttpNotFoundFailure<VOutput>(message: httpNotFound.message);
      case final HttpUnprocessableEntityFailure<VInput> httpUnprocessableEntity:
        return HttpUnprocessableEntityFailure<VOutput>(
            message: httpUnprocessableEntity.message);
      case final HttpInternalServerErrorFailure<VInput> httpInternalServerError:
        return HttpInternalServerErrorFailure<VOutput>(
            message: httpInternalServerError.message);
      case final HttpMethodNotAllowedFailure<VInput> httpMethodNotAllowed:
        return HttpMethodNotAllowedFailure<VOutput>(
            message: httpMethodNotAllowed.message);
      case final HttpConflictErrorFailure<VInput> httpConflictError:
        return HttpConflictErrorFailure<VOutput>(
            message: httpConflictError.message);
      case final BadKeyOfValueFailure<VInput> badKeyOfValue:
        return BadKeyOfValueFailure<VOutput>(message: badKeyOfValue.message);
      case final UndefinedFailure<VInput> undefined:
        return UndefinedFailure<VOutput>(message: undefined.message);
    }
  }

  Failure<V> mapValidationExceptionToFailure<V>(
      HttpBadRequestException exception,
      {required V Function(Map<String, dynamic>) fromJson}) {
    V? validationData;
    final Object? jsonData = exception.data;

    if (jsonData != null && jsonData is Map<String, dynamic>) {
      validationData = fromJson(jsonData);
    }

    return Failure<V>.httpBadRequest(
      message: exception.message,
      data: validationData,
    );
  }
}
