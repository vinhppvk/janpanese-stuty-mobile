import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app/di/injector.dart';
import '../presentation/example/bloc/example_bloc.dart';
import '../presentation/example/page/example_page.dart';
import '../presentation/login/page/login_page.dart';
import '../presentation/register/bloc/step_1/register_step_1_bloc.dart';
import '../presentation/register/bloc/step_2/register_step_2_bloc.dart';
import '../presentation/register/page/register_page.dart';

import '../presentation/teacher_detail/page/teacher_detail_page.dart';
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
              return const LoginPage();
            },
            routes: <GoRoute>[
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
                routes: <RouteBase>[
                  ...loggedInRoutes,
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  static List<GoRoute> loggedInRoutes = <GoRoute>[
    GoRoute(
      path: RouterInfo.teacherDetailPage.path,
      name: RouterInfo.teacherDetailPage.name,
      builder: (BuildContext context, GoRouterState state) {
        return const TeacherDetailPage();
      },
    ),
  ];
}
