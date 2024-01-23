import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure<ValidationModel> with _$Failure<ValidationModel> {
  // Undefined Exception
  const factory Failure.undefined({String? message}) =
      UndefinedFailure<ValidationModel>;

  // No Connection Exception
  const factory Failure.noConnection({String? message}) =
      NoConnectionFailure<ValidationModel>;

  // Http Exception
  const factory Failure.httpBadRequest(
      {String? message,
      ValidationModel? data}) = HttpBadRequestFailure<ValidationModel>;

  const factory Failure.httpUnauthorized({String? message}) =
      HttpUnauthorizedFailure<ValidationModel>;

  const factory Failure.httpForbidden({String? message}) =
      HttpForbiddenFailure<ValidationModel>;

  const factory Failure.httpNotFound({String? message}) =
      HttpNotFoundFailure<ValidationModel>;

  const factory Failure.httpUnprocessableEntity({String? message}) =
      HttpUnprocessableEntityFailure<ValidationModel>;

  const factory Failure.httpInternalServerError({String? message}) =
      HttpInternalServerErrorFailure<ValidationModel>;

  const factory Failure.httpMethodNotAllowed({String? message}) =
      HttpMethodNotAllowedFailure<ValidationModel>;

  const factory Failure.httpConflict({String? message}) =
      HttpConflictErrorFailure<ValidationModel>;

  // Parse Response Error Exception
  const factory Failure.badKeyOfValue({String? message}) =
      BadKeyOfValueFailure<ValidationModel>;
}
