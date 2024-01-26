import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/utils/enum/app_language.dart';
import '../../../core/usecase.dart';
import '../../../domain/change_language/get_app_language_usecase.dart';
import '../../../domain/change_language/set_app_language_usecase.dart';

part 'change_language_state.dart';

part 'change_language_cubit.freezed.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  ChangeLanguageCubit(this._getAppLanguageUseCase, this._setAppLanguageUseCase)
      : super(const ChangeLanguageState.initial());

  final GetAppLanguageUseCase _getAppLanguageUseCase;
  final SetAppLanguageUseCase _setAppLanguageUseCase;

  void setAppLanguage(AppLanguage appLanguage) {
    _setAppLanguageUseCase(params: appLanguage);
    emit(ChangeLanguageState.changed(appLanguage));
  }

  void loadSavedLanguage() {
    final AppLanguage? language = _getAppLanguageUseCase(params: NoParam());
    emit(ChangeLanguageState.loadedLocal(language));
  }
}
