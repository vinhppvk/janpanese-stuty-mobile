import '../../app/utils/enum/app_language.dart';
import '../../core/usecase.dart';
import '../../data/repository/auth_repository.dart';

class GetAppLanguageUseCase implements LocalUseCase<AppLanguage?, NoParam> {
  GetAppLanguageUseCase(this._repository);

  final AuthRepository _repository;

  @override
  AppLanguage? call({required NoParam params}) => _repository.getLanguage();
}
