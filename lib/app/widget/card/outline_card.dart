import 'package:flutter/material.dart';

import '../../utils/extension/build_context.dart';

class OutlinedBorderCard extends StatelessWidget {
  const OutlinedBorderCard({
    super.key,
    this.onTap,
    required this.child,
    this.backgroundColor,
    this.borderColor,
  });

  final VoidCallback? onTap;
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Ink(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            width: 1.5,
            color: borderColor ?? context.colorScheme.outline,
          ),
          color: backgroundColor ?? context.colorScheme.surface,
        ),
        child: child,
      ),
    );
  }
}
