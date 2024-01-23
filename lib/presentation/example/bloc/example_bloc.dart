import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecase.dart';
import '../../../data/model/entity/response/example/example_user.dart';
import '../../../domain/example/example_usecase.dart';

part 'example_event.dart';

part 'example_state.dart';

part 'example_bloc.freezed.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc(
    this._exampleUseCase,
  ) : super(const ExampleState.initial()) {
    on<ExampleEvent>((ExampleEvent event, Emitter<ExampleState> emit) async {
      switch (event) {
        case ExampleEventStarted():
          await _getExampleUser(emit);
      }
    });
  }

  final ExampleUseCase _exampleUseCase;

  Future<void> _getExampleUser(Emitter<ExampleState> emit) async {
    emit(const ExampleState.loading());

    final Either<Failure<void>, List<ExampleUser>> dataState =
        await _exampleUseCase(params: NoParam());

    dataState.fold(
      (Failure<void> l) => emit(ExampleState.error(l)),
      (List<ExampleUser> r) => emit(ExampleState.loaded(r)),
    );
  }
}
