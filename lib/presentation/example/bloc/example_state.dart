part of 'example_bloc.dart';

@freezed
sealed class ExampleState with _$ExampleState {
  const factory ExampleState.initial() = ExampleStateInitial;

  const factory ExampleState.loading() = ExampleStateLoading;

  const factory ExampleState.loaded(List<ExampleUser> response) =
      ExampleStateLoaded;

  const factory ExampleState.error(Failure<void> failure) = ExampleStateError;
}
