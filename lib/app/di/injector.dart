import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../data/remote/dio/interceptor/logger_interceptor.dart';
import '../../data/remote/service/example/example_service.dart';
import '../../data/repository/example_repository.dart';
import '../../domain/example/example_usecase.dart';
import '../../presentation/example/bloc/example_bloc.dart';

final GetIt injector = GetIt.instance;

Future<void> setupInjector() async {
  // Api Client - Dio
  final Dio apiClient = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
      receiveDataWhenStatusError: true,
    ),
  )..interceptors.addAll(
      <Interceptor>[
        LoggerInterceptor(),
      ],
    );

  injector.registerLazySingleton<Dio>(() => apiClient);
  // Data - Local Data Sources
  // Data - Remote Data Sources
  injector.registerLazySingleton<ExampleService>(
    () => ExampleService(injector()),
  );
  // Data - Repository
  injector.registerLazySingleton<ExampleRepository>(
    () => ExampleRepository(injector()),
  );
  // Domain - Use Cases
  injector.registerLazySingleton<ExampleUseCase>(
    () => ExampleUseCase(injector()),
  );
  // Presentation - Blocs
  injector.registerFactory<ExampleBloc>(
    () => ExampleBloc(injector()),
  );
}
