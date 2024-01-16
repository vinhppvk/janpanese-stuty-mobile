import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/utils/constant/failure_messages.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_to_failure_mapper.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/base/empty_model.dart';
import '../../data/model/entity/example/example_user.dart';
import '../../data/repository/example_repository.dart';

class ExampleUseCase extends UseCase<List<ExampleUser>, NoParam>
    with ErrorToFailureMapper {
  ExampleUseCase(this._exampleRepository);

  final ExampleRepository _exampleRepository;

  @override
  Future<Either<Failure, List<ExampleUser>>> call(
      {required NoParam param}) async {
    try {
      final List<ExampleUser> response =
          await _exampleRepository.getExampleUsers();
      return Either<Failure, List<ExampleUser>>.right(response);
    } on DioException catch (err) {
      return mapDioExceptionToFailure(err);
    } on Exception catch (err) {
      return mapExceptionToFailure(err);
    }
  }
}
