import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app/di/injector.dart';
import '../data/model/entity/response/notifications/notification_result.dart';
import '../data/model/entity/response/notifications/system_notification_result.dart';
import '../presentation/example/bloc/example_bloc.dart';
import '../presentation/example/page/example_page.dart';
import '../presentation/login/page/login_page.dart';
import '../presentation/notification_detail/page/notification_detail_page.dart';
import '../presentation/notifications/page/notifications_page.dart';
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
                  ]),
            ],
          ),
        ],
      ),
    ],
  );

  static List<GoRoute> loggedInRoutes = <GoRoute>[
    GoRoute(
        path: RouterInfo.notificationListPage.path,
        name: RouterInfo.notificationListPage.name,
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationsPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: RouterInfo.notificationDetailPage.path,
            name: RouterInfo.notificationDetailPage.name,
            builder: (BuildContext context, GoRouterState state) {
              final NotificationResult data =
                  state.extra! as NotificationResult;
              return NotificationDetailPage(notificationData: data);
            },
          ),
        ]),
  ];
}
