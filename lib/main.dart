import 'package:flutter/material.dart';
import 'app/di/injector.dart';
import 'app/theme/theme.dart';
import 'router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
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
