import 'package:flutter/material.dart';

import '../../utils/extension/build_context.dart';

class BottomSheetScaffold extends StatelessWidget {
  const BottomSheetScaffold({
    super.key,
    required this.appbar,
    required this.body,
    this.bottomNavigation,
    this.bottomPadding =
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
  });

  final Widget appbar;
  final Widget body;
  final Widget? bottomNavigation;
  final EdgeInsets bottomPadding;

  @override
  Widget build(BuildContext context) {
    Widget? bottomNavigationWidget;
    if (bottomNavigation != null) {
      bottomNavigationWidget = Container(
        padding: bottomPadding,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: context.colorScheme.outline,
              width: 1.5,
            ),
          ),
        ),
        child: bottomNavigation,
      );
    }

    return ColoredBox(
      color: context.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          appbar,
          Flexible(child: body),
          if (bottomNavigationWidget != null) bottomNavigationWidget,
        ],
      ),
    );
  }
}
