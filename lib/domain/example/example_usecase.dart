import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/entity/response/example/example_user.dart';
import '../../data/repository/example_repository.dart';

class ExampleUseCase extends UseCase<List<ExampleUser>, NoParam, void> {
  ExampleUseCase(this._repository);

  final ExampleRepository _repository;

  @override
  Future<Either<Failure<void>, List<ExampleUser>>> call(
          {required NoParam params}) async =>
      _repository.getExampleUsers();
}
