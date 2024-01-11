import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/utils/constant/failure_messages.dart';
import '../../app/utils/mixin/error_to_failure_mixin.dart';
import '../../core/error/failure.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/example/example_user_dto.dart';
import '../../data/repository/example_repository.dart';

class ExampleUseCase extends UseCase<List<ExampleUserDto>, NoParam>
    with ErrorToFailureMixin {
  ExampleUseCase(this._exampleRepository);

  final ExampleRepository _exampleRepository;

  @override
  Future<Either<Failure, List<ExampleUserDto>>> call(
      {required NoParam param}) async {
    try {
      final List<ExampleUserDto> response =
          await _exampleRepository.getExampleUsers();
      return Either<Failure, List<ExampleUserDto>>.right(response);
    } on DioException catch (err) {
      return mapDioExceptionToFailure(err);
    } on Exception catch (err) {
      return mapExceptionToFailure(err);
    }
  }
}
