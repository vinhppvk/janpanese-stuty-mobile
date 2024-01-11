import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecase.dart';
import '../../../data/model/dto/example/example_user_dto.dart';
import '../../../domain/example/example_usecase.dart';

part 'example_event.dart';

part 'example_state.dart';

part 'example_bloc.freezed.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc(this._exampleUseCase) : super(const ExampleState.initial()) {
    on<ExampleEvent>((ExampleEvent event, Emitter<ExampleState> emit) async {
      await _getExampleUser(event, emit);
    });
  }

  final ExampleUseCase _exampleUseCase;

  Future<void> _getExampleUser(
      ExampleEvent event, Emitter<ExampleState> emit) async {
    emit(const ExampleState.loading());

    final Either<Failure, List<ExampleUserDto>> dataState =
        await _exampleUseCase(param: NoParam());

    dataState.fold(
      (Failure l) => emit(ExampleState.error(l)),
      (List<ExampleUserDto> r) => emit(ExampleState.loaded(r)),
    );
  }
}
