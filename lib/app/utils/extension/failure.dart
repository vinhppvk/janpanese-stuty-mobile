import '../../../core/error/failure.dart';

extension FailureX<ValidationModel> on Failure<ValidationModel> {
  ValidationModel? getValidationModel() {
    return switch (this) {
      final HttpBadRequestFailure<ValidationModel> httpBadRequest => httpBadRequest.data,
      _ => null,
    };
  }
}