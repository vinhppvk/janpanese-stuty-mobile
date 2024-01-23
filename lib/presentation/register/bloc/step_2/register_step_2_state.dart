part of 'register_step_2_bloc.dart';

@freezed
sealed class RegisterStep2State with _$RegisterStep2State {
  const factory RegisterStep2State.initial() = RegisterStep2StateInitial;
  const factory RegisterStep2State.loading() = RegisterStep2StateLoading;
  const factory RegisterStep2State.resendOtpResult(ResendOtpResult result) = RegisterStep2StateResendOtpResult;
  const factory RegisterStep2State.verifyOtpResult(VerifyOtpResult result) = RegisterStep2StateVerifyOtpResult;
  const factory RegisterStep2State.verifyOtpError(Failure<VerifyOtpValidation> failure) = RegisterStep2StateVerifyOtpError;
  const factory RegisterStep2State.error(Failure<void> failure) = RegisterStep2StateError;
}
