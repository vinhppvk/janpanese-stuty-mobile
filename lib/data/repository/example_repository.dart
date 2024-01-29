import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../core/error_handler/error_helper.dart';
import '../model/dto/response/example/example_user_dto.dart';
import '../model/entity/response/example/example_user.dart';
import '../model/mapper/example/example_mapper.dart';
import '../remote/example_remote_data_source.dart';

class ExampleRepository with ErrorMapper {
  const ExampleRepository(this._dataSource);

  final ExampleRemoteDataSource _dataSource;

  Future<Either<Failure<void>, List<ExampleUser>>> getExampleUsers() async {
    try {
      final List<ExampleUserDto> responseDto =
          await _dataSource.getExampleUsers();
      final List<ExampleUser> response =
          ExampleMappr().convertList(responseDto);
      return Either<Failure<void>, List<ExampleUser>>.right(response);
    } on DioException catch (e) {
      return Either<Failure<void>, List<ExampleUser>>.left(
          mapDioExceptionToFailure(e));
    } on InAppException catch (e) {
      return Either<Failure<void>, List<ExampleUser>>.left(
          mapInAppExceptionFailure(e));
    } on BadKeyException catch (e) {
      return Either<Failure<void>, List<ExampleUser>>.left(
          mapExceptionToFailure(e));
    }
  }
}
