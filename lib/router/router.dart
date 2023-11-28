import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/example/presentation/page/example_page.dart';
import '../features/navigation/page/nav_page.dart';
import 'router_info.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: RouterInfo.navigationPage.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: RouterInfo.navigationPage.path,
        name: RouterInfo.navigationPage.name,
        builder: (BuildContext context, GoRouterState state) {
          return const NavigationPage();
        },
      ),
      GoRoute(
        path: RouterInfo.examplePage.path,
        name: RouterInfo.examplePage.name,
        builder: (BuildContext context, GoRouterState state) {
          return const ExamplePage();
        },
      ),
    ],
  );
}
