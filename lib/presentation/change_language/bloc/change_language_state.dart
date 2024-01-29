part of 'change_language_cubit.dart';

@freezed
sealed class ChangeLanguageState with _$ChangeLanguageState {
  const factory ChangeLanguageState.initial() = ChangeLanguageStateInitial;

  const factory ChangeLanguageState.loadedLocal(AppLanguage? language) =
      ChangeLanguageStateLoadedLocal;

  const factory ChangeLanguageState.changed(AppLanguage? language) = ChangeLanguageStateChanged;
}
