part of 'register_step_1_bloc.dart';

@freezed
sealed class RegisterStep1Event with _$RegisterStep1Event {
  const factory RegisterStep1Event.started() = RegisterStep1EventStarted;
  const factory RegisterStep1Event.registerUser(RegisterUserParams params) = RegisterStep1EventRegisterUser;
  const factory RegisterStep1Event.uploadImage() = RegisterStep1EventUploadImage;
}
