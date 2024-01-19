import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../model/dto/response/example/example_user_dto.dart';
import '../remote/example/example_remote_data_source.dart';

class ExampleRepository with ErrorMapper {
  const ExampleRepository(this._exampleRemoteDataSource);

  final ExampleRemoteDataSource _exampleRemoteDataSource;

  Future<Either<Failure<void>, List<ExampleUserDto>>> getExampleUsers() async {
    try {
      final List<ExampleUserDto> response =
          await _exampleRemoteDataSource.getExampleUsers();
      return Either<Failure<void>, List<ExampleUserDto>>.right(response);
    } on DioException catch (e) {
      return Either<Failure<void>, List<ExampleUserDto>>.left(
          mapDioExceptionToFailure(e));
    } on InAppException catch (e) {
      return Either<Failure<void>, List<ExampleUserDto>>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<void>, List<ExampleUserDto>>.left(
          mapExceptionToFailure(e));
    }
  }
}
