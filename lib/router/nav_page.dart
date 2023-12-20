import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app/widget/app_bar/custom_app_bar.dart';

import '../app/widget/buttons/primary_button.dart';
import 'router_info.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> navButtons = _buttonList(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Schedule'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemCount: navButtons.length,
        itemBuilder: (BuildContext context, int index) => navButtons[index],
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 24),
      ),
    );
  }

  List<Widget> _buttonList(BuildContext context) {
    return <Widget>[
      PrimaryButton(
        text: Text(RouterInfo.registerOptionsPage.name),
        onPressed: () => context.pushNamed(RouterInfo.registerOptionsPage.name),
      ),
      PrimaryButton(
        text: Text(RouterInfo.registerPage.name),
        onPressed: () => context.pushNamed(RouterInfo.registerPage.name),
      ),
      PrimaryButton(
        text: Text(RouterInfo.examplePage.name),
        onPressed: () => context.pushNamed(RouterInfo.examplePage.name),
      ),
      PrimaryButton(
        text: Text(RouterInfo.loginPage.name),
        onPressed: () => context.pushNamed(RouterInfo.loginPage.name),
      ),
    ];
  }
}
