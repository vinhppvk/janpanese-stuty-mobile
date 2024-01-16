part of 'register_step_1_bloc.dart';

@freezed
sealed class RegisterStep1State with _$RegisterStep1State {
  const factory RegisterStep1State.initial() = RegisterStep1StateInitial;
  const factory RegisterStep1State.loading() = RegisterStep1StateLoading;
  const factory RegisterStep1State.loaded() = RegisterStep1StateLoaded;
  const factory RegisterStep1State.registerResult() = RegisterStep1StateRegisterResult;
  const factory RegisterStep1State.uploadImageResult() = RegisterStep1StateUploadImageResult;
  const factory RegisterStep1State.error(Failure failure) = RegisterStep1StateError;
}
