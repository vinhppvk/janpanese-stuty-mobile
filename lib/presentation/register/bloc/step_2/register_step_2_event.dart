part of 'register_step_2_bloc.dart';

@freezed
sealed class RegisterStep2Event with _$RegisterStep2Event {
  const factory RegisterStep2Event.resendOtpCode(String email) = RegisterStep2EventResendOtpCode;
  const factory RegisterStep2Event.verifyOtpCode(String email, String otpCode) = RegisterStep2EventVerifyOtpCode;
}
