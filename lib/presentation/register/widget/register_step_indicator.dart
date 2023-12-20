import 'package:flutter/material.dart';

import '../../../app/theme/style/color.dart';
import '../../../app/theme/style/font_style.dart';
import '../utils/register_step.dart';

class RegisterStepIndicator extends StatelessWidget {
  const RegisterStepIndicator({
    super.key,
    required this.currentStep,
  });

  final RegisterStep currentStep;

  @override
  Widget build(BuildContext context) {
    const List<RegisterStep> steps = RegisterStep.values;
    final int currentIndex = steps.indexOf(currentStep);
    final List<Widget> stepWidgets = List<Widget>.empty(growable: true);

    for (int i = 0; i < steps.length; i++) {
      final Widget stepWidget = Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            padding: const EdgeInsets.only(bottom: 2.0),
            decoration: BoxDecoration(
              color: i <= currentIndex ? TColor.success1000 : TColor.grey300,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              '${i + 1}',
              style: TTextStyle.getBodyMedium(
                fontWeight: TFontWeight.bold,
                color: TColor.white,
              ),
            ),
          ),
          const SizedBox(width: 4.0),
          Text(
            steps[i].displayText,
            style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
          ),
        ],
      );

      stepWidgets.add(stepWidget);

      if (i < steps.length - 1) {
        stepWidgets.add(
          Expanded(
            child: Divider(
              thickness: 1.5,
              height: 1.5,
              color:
                  i <= (currentIndex - 1) ? TColor.success1000 : TColor.grey300,
              indent: 4.0,
              endIndent: 4.0,
            ),
          ),
        );
      }
    }

    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: TColor.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: stepWidgets,
      ),
    );
  }
}
