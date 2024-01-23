import 'package:fpdart/fpdart.dart';

import 'error/failure.dart';

class NoParam {}

abstract class UseCase<T, P, V> {
  Future<Either<Failure<V>, T>> call({required P params});
}
