import 'package:flutter/material.dart';

import '../../theme/style/color.dart';
import '../../utils/extension/build_context.dart';

class OverlayLoader {
  OverlayLoader();

  OverlayEntry? _loaderOverlayEntry;

  void show(BuildContext context) {
    _loaderOverlayEntry = OverlayEntry(
      builder: (BuildContext context) => const ColoredBox(
        color: TColor.barrier,
        child: Center(
          child: _OverlayCircularProgressIndicator(),
        ),
      ),
    );
    Overlay.of(context).insert(_loaderOverlayEntry!);
  }

  void hide() {
    if (_loaderOverlayEntry != null) {
      _loaderOverlayEntry!.remove();
      _loaderOverlayEntry = null;
    }
  }
}

class _OverlayCircularProgressIndicator extends StatelessWidget {
  const _OverlayCircularProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.0,
      height: 72.0,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        shape: BoxShape.circle,
      ),
      child: CircularProgressIndicator(
        strokeCap: StrokeCap.round,
        strokeWidth: 7.0,
        strokeAlign: BorderSide.strokeAlignInside,
        color: context.colorScheme.primary,
        backgroundColor: TColor.grey200,
      ),
    );
  }
}
