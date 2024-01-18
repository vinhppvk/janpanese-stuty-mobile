import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app/utils/constant/failure_messages.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../../core/usecase.dart';
import '../../data/model/dto/base/empty_model.dart';
import '../../data/model/entity/response/example/example_user.dart';
import '../../data/repository/example_repository.dart';

class ExampleUseCase extends UseCase<List<ExampleUser>, NoParam, void> {
  ExampleUseCase(this._exampleRepository);

  final ExampleRepository _exampleRepository;

  @override
  Future<Either<Failure<void>, List<ExampleUser>>> call(
      {required NoParam params}) {
    return _exampleRepository.getExampleUsers();
  }
}
