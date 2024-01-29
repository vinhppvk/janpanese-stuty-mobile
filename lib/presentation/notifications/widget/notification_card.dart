import 'package:flutter/material.dart';

import '../../../app/utils/extension/build_context.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.child,
    this.backgroundColor,
    this.onTap,
  });

  final Widget child;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          color: backgroundColor,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
                child: child,
              ),
              Divider(
                indent: 24.0,
                color: context.colorScheme.outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
