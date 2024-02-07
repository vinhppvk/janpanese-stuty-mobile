import 'package:flutter/material.dart';

import '../../utils/extension/build_context.dart';

class OutlinedBorderCard extends StatelessWidget {
  const OutlinedBorderCard({
    super.key,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius,
    this.onTap,
    required this.child,
    this.backgroundColor,
    this.borderColor,
  });

  final EdgeInsets padding;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? BorderRadius.circular(12.0),
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(12.0),
            border: Border.all(
              width: 1.5,
              color: borderColor ?? context.colorScheme.outline,
            ),
            color: backgroundColor ?? context.colorScheme.surface,
          ),
          child: child,
        ),
      ),
    );
  }
}
