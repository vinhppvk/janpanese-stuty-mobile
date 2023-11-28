import 'package:flutter/material.dart';
import 'core/config/theme/theme.dart';
import 'router/router.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: TTheme.lightThemeData,
      routerConfig: AppRouter.router,
    );
  }
}
