import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/response/example/example_user_dto.dart';
import '../../data/model/entity/response/example/example_user.dart';
import '../../data/model/mapper/example/example_mapper.dart';
import '../../data/repository/example_repository.dart';

class ExampleUseCase extends UseCase<List<ExampleUser>, NoParam, void> {
  ExampleUseCase(this._exampleRepository);

  final ExampleRepository _exampleRepository;

  @override
  Future<Either<Failure<void>, List<ExampleUser>>> call(
      {required NoParam params}) async {
    final Either<Failure<void>, List<ExampleUserDto>> responseDto =
        await _exampleRepository.getExampleUsers();
    return responseDto
        .map(ExampleMappr().convertList<ExampleUserDto, ExampleUser>);
  }
}
