part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started({required LoginParams params}) = LoginEventStarted;
}
