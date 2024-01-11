part of 'example_bloc.dart';

@freezed
sealed class ExampleState with _$ExampleState {
  const factory ExampleState.initial() = ExampleInitial;
  const factory ExampleState.loading() = ExampleLoading;
  const factory ExampleState.loaded(List<ExampleUserDto> response) = ExampleLoaded;
  const factory ExampleState.error(Failure failure) = ExampleError;
}
