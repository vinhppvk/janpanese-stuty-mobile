import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app/di/injector.dart';
import '../presentation/change_language/bloc/change_language_cubit.dart';
import '../presentation/change_language/page/change_language_page.dart';
import '../presentation/example/bloc/example_bloc.dart';
import '../presentation/example/page/example_page.dart';
import '../presentation/home/page/home_page.dart';
import '../presentation/login/bloc/login_bloc.dart';
import '../presentation/login/page/login_page.dart';
import '../presentation/register/bloc/step_1/register_step_1_bloc.dart';
import '../presentation/register/bloc/step_2/register_step_2_bloc.dart';
import '../presentation/register/page/register_page.dart';

import 'nav_page.dart';
import 'router_info.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: RouterInfo.navigationPage.path,
    routes: <GoRoute>[
      GoRoute(
        path: RouterInfo.navigationPage.path,
        name: RouterInfo.navigationPage.name,
        builder: (BuildContext context, GoRouterState state) {
          return const NavigationPage();
        },
        routes: <GoRoute>[
          GoRoute(
            path: RouterInfo.examplePage.path,
            name: RouterInfo.examplePage.name,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider<ExampleBloc>(
                create: (_) => injector<ExampleBloc>(),
                child: const ExamplePage(),
              );
            },
          ),
          GoRoute(
            path: RouterInfo.loginPage.path,
            name: RouterInfo.loginPage.name,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider<LoginBloc>(
                create: (BuildContext context) => injector<LoginBloc>(),
                child: const LoginPage(),
              );
            },
            routes: <GoRoute>[
              ...loggedInRoutes,
              ...notLoggedInRoutes,
            ],
          ),
        ],
      ),
    ],
  );

  static List<GoRoute> notLoggedInRoutes = <GoRoute>[
    GoRoute(
      path: RouterInfo.changeLanguage.path,
      name: RouterInfo.changeLanguage.name,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider<ChangeLanguageCubit>(
          create: (BuildContext context) => injector<ChangeLanguageCubit>(),
          child: const ChangeLanguagePage(),
        );
      },
    ),
    GoRoute(
      path: RouterInfo.registerPage.path,
      name: RouterInfo.registerPage.name,
      builder: (BuildContext context, GoRouterState state) {
        return MultiBlocProvider(
          providers: <BlocProvider<Bloc<dynamic, dynamic>>>[
            BlocProvider<RegisterStep1Bloc>(
                create: (BuildContext context) =>
                    injector<RegisterStep1Bloc>()),
            BlocProvider<RegisterStep2Bloc>(
                create: (BuildContext context) =>
                    injector<RegisterStep2Bloc>()),
          ],
          child: const RegisterPage(),
        );
      },
    ),
  ];

  static List<GoRoute> loggedInRoutes = <GoRoute>[
    GoRoute(
      path: RouterInfo.homePage.path,
      name: RouterInfo.homePage.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    )
  ];
}
