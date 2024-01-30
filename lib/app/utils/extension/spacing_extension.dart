import 'package:flutter/material.dart';

extension SpacingExtension on Flex {
  Flex withSeparator({required Widget separator}) {
    final List<Widget> spacedChildren = children
        .expand((Widget widget) => <Widget>[widget, separator])
        .toList();

    // Remove the extra SizedBox
    if (spacedChildren.isNotEmpty) {
      spacedChildren.removeLast();
    }

    return Flex(
      direction: direction,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      key: key,
      children: spacedChildren,
    );
  }

  Flex withSpacing({required double spacing}) =>
      withSeparator(separator: SizedBox.square(dimension: spacing));
}
