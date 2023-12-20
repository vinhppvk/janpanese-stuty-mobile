import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/widget/app_bar/custom_app_bar.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Example Page',
        onBackPressed: () {
          context.pop();
        },
      ),
      body: const Placeholder(),
    );
  }
}
