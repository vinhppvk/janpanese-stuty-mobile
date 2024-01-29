import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/di/injector.dart';
import '../../../app/theme/style/font_style.dart';
import '../../../app/widget/buttons/primary_button.dart';
import '../../../data/local/local_data_source.dart';
import '../../../router/router_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  LocalDataSource get _localDataSource => injector<LocalDataSource>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home',
              style: TTextStyle.getHeadingH3(),
            ),
            const SizedBox(height: 56.0),
            PrimaryButton(
              onPressed: () => _onLogOutPressed(context),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  void _onLogOutPressed(BuildContext context) {
    _localDataSource.clear();
    context.goNamed(RouterInfo.loginPage.name);
  }
}
