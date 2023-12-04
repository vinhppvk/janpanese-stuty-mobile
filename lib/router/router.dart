import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/example/presentation/page/example_page.dart';
import '../features/login/presentation/pages/login_page.dart';
import '../features/register/presentation/pages/register_options_page.dart';
import '../features/register/presentation/pages/register_steps/register_page.dart';
import '../navigation_page/nav_page.dart';
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
              return const ExamplePage();
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
                path: RouterInfo.registerOptionsPage.path,
                name: RouterInfo.registerOptionsPage.name,
                builder: (BuildContext context, GoRouterState state) {
                  return const RegisterOptionsPage();
                },
                routes: <GoRoute>[
                  GoRoute(
                    path: RouterInfo.registerPage.path,
                    name: RouterInfo.registerPage.name,
                    builder: (BuildContext context, GoRouterState state) {
                      return const RegisterPage();
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
