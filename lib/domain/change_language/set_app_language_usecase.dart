import '../../app/utils/enum/app_language.dart';
import '../../core/usecase.dart';
import '../../data/repository/auth_repository.dart';

class SetAppLanguageUseCase implements LocalUseCase<void, AppLanguage> {
  SetAppLanguageUseCase(this._repository);

  final AuthRepository _repository;

  @override
  void call({required AppLanguage params}) => _repository.setLanguage(params);
}
