import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  // Undefined Exception
  const factory Failure.undefined({required String message}) = UndefinedFailure;

  // No Connection Exception
  const factory Failure.noConnection({required String message}) =
      NoConnectionFailure;

  // Http Exception
  const factory Failure.httpBadRequest({required String message}) =
      HttpBadRequestFailure;

  const factory Failure.httpUnauthorized({required String message}) =
      HttpUnauthorizedFailure;

  const factory Failure.httpForbidden({required String message}) =
      HttpForbiddenFailure;

  const factory Failure.httpNotFound({required String message}) =
      HttpNotFoundFailure;

  const factory Failure.httpUnprocessableEntity({required String message}) =
      HttpUnprocessableEntityFailure;

  const factory Failure.httpInternalServerError({required String message}) =
      HttpInternalServerErrorFailure;

  const factory Failure.httpMethodNotAllowedError({required String message}) =
      HttpMethodNotAllowedErrorFailure;

  const factory Failure.httpConflictError({required String message}) =
      HttpConflictErrorFailure;

  // Parse Response Error Exception
  const factory Failure.badKeyOfValue({required String message}) =
      BadKeyOfValueFailure;
}
