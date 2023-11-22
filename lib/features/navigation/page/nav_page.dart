import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../common_components/buttons/primary_button.dart';
import '../../../router/router_info.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> navButtons = buildButtons(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Page'),
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

  List<Widget> buildButtons(BuildContext context) {
    return <Widget>[
      PrimaryButton(
        text: RouterInfo.examplePage.name,
        onPressed: () => context.pushNamed(RouterInfo.examplePage.name),
      ),
    ];
  }
}
