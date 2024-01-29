import 'package:flutter/material.dart';

import '../../../app/asset/image_asset.dart';
import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';

class EmptyNotificationView extends StatelessWidget {
  const EmptyNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(ImageAsset.bellIllustration),
          const SizedBox(height: 24.0),
          Text(
            'No Notification Yet',
            style: TTextStyle.getHeadingH4(),
          ),
          const SizedBox(height: 8.0),
          Text(
            'We’ll notify you when something arrives',
            style: TTextStyle.getBodyLarge(color: TColor.grey500),
          ),
        ],
      ),
    );
  }
}
