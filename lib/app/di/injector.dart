import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/dio/interceptor/error_interceptor.dart';
import '../../core/dio/interceptor/logger_interceptor.dart';
import '../../data/api/auth/auth_api.dart';
import '../../data/api/example/example_api.dart';
import '../../data/local/local_data_source.dart';
import '../../data/remote/auth_remote_data_source.dart';
import '../../data/remote/example_remote_data_source.dart';
import '../../data/repository/auth_repository.dart';
import '../../data/repository/example_repository.dart';
import '../../domain/change_language/get_app_language_usecase.dart';
import '../../domain/change_language/set_app_language_usecase.dart';
import '../../domain/example/example_usecase.dart';
import '../../domain/login/login_usecase.dart';
import '../../domain/register/register_user_usecase.dart';
import '../../domain/register/resend_otp_usecase.dart';
import '../../domain/register/verify_otp_usecase.dart';
import '../../presentation/change_language/bloc/change_language_cubit.dart';
import '../../presentation/example/bloc/example_bloc.dart';
import '../../presentation/login/bloc/login_bloc.dart';
import '../../presentation/register/bloc/step_1/register_step_1_bloc.dart';
import '../../presentation/register/bloc/step_2/register_step_2_bloc.dart';
import '../utils/constant/app_url.dart';

final GetIt injector = GetIt.instance;

Future<void> setupInjector() async {
  // Api Client - Dio
  final Dio apiClient = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
      receiveDataWhenStatusError: true,
      baseUrl: AppUrl.baseUrl,
    ),
  )..interceptors.addAll(
      <Interceptor>[
        ErrorInterceptor(),
        LoggerInterceptor(),
      ],
    );

  injector.registerLazySingleton<Dio>(() => apiClient);
  // Shared Preferences
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  injector.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  // Data - Api
  injector.registerLazySingleton<ExampleApi>(
    () => ExampleApi(injector()),
  );
  injector.registerLazySingleton<AuthApi>(
    () => AuthApi(injector()),
  );
  // Data - Local Data Sources
  injector.registerLazySingleton<LocalDataSource>(
    () => LocalDataSource(injector()),
  );
  // Data - Remote Data Sources
  injector.registerLazySingleton<ExampleRemoteDataSource>(
    () => ExampleRemoteDataSource(injector()),
  );
  injector.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(injector()),
  );
  // Data - Repository
  injector.registerLazySingleton<ExampleRepository>(
    () => ExampleRepository(injector()),
  );
  injector.registerLazySingleton<AuthRepository>(
    () => AuthRepository(injector(), injector()),
  );
  // Domain - Use Cases
  injector.registerLazySingleton<ExampleUseCase>(
    () => ExampleUseCase(injector()),
  );
  injector.registerLazySingleton<RegisterUserUseCase>(
    () => RegisterUserUseCase(injector()),
  );
  injector.registerLazySingleton<ResendOtpUseCase>(
    () => ResendOtpUseCase(injector()),
  );
  injector.registerLazySingleton<VerifyOtpUseCase>(
    () => VerifyOtpUseCase(injector()),
  );
  injector.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(injector()),
  );
  injector.registerLazySingleton<GetAppLanguageUseCase>(
    () => GetAppLanguageUseCase(injector()),
  );
  injector.registerLazySingleton<SetAppLanguageUseCase>(
    () => SetAppLanguageUseCase(injector()),
  );
  // Presentation - Blocs
  injector.registerFactory<ExampleBloc>(
    () => ExampleBloc(injector()),
  );
  injector.registerFactory<RegisterStep1Bloc>(
    () => RegisterStep1Bloc(injector()),
  );
  injector.registerFactory<RegisterStep2Bloc>(
    () => RegisterStep2Bloc(injector(), injector()),
  );
  injector.registerFactory<LoginBloc>(
    () => LoginBloc(injector()),
  );
  injector.registerFactory<ChangeLanguageCubit>(
    () => ChangeLanguageCubit(injector(), injector()),
  );
}
