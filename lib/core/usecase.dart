import 'package:fpdart/fpdart.dart';

import 'error/failure.dart';

class NoParam {}

abstract class RemoteUseCase<T, P, V> {
  Future<Either<Failure<V>, T>> call({required P params});
}

abstract class LocalUseCase<T, P> {
  T call({required P params});
}