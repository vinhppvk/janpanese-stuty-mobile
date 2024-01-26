part of 'login_bloc.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.loaded() = LoginStateLoaded;
  const factory LoginState.loginError(Failure<LoginValidation> failure) = LoginStateValidationLoginError;
}
