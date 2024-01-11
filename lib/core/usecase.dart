import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'error/failure.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call({required P param});
}

class NoParam {}
