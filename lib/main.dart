import 'package:flutter/material.dart';
import 'app/di/injector.dart';
import 'app/theme/theme.dart';
import 'data/local/local_data_source.dart';
import 'router/router.dart';

Future<void> setUpLocalDataSource() async {
  final LocalDataSource localDataSource = injector<LocalDataSource>();
  await localDataSource.setUpAppPreferences();
  await localDataSource.clearUserPreferencesIfNeeded();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  await setUpLocalDataSource();
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
