import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    super.key,
    required Widget title,
    super.onSaved,
    super.validator,
    bool super.initialValue = false,
    double checkBoxSize = 48.0,
    Function(bool? value)? onChanged,
  }) : super(
          builder: (FormFieldState<bool> state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox.square(
                  dimension: checkBoxSize,
                  child: Checkbox(
                    value: state.value,
                    onChanged: (bool? value) {
                      onChanged?.call(value);
                      state.didChange(value);
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: _Body(title: title, state: state),
                )
              ],
            );
          },
        );
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.state,
    required this.title,
  });

  final FormFieldState<bool> state;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DefaultTextStyle.merge(
          style: TTextStyle.getBodyMedium(
            fontWeight: TFontWeight.medium,
          ),
          child: title,
        ),
        if (state.hasError)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              state.errorText ?? '',
              style: TTextStyle.getBodySmall(
                fontWeight: TFontWeight.medium,
                color: context.colorScheme.error,
              ),
            ),
          ),
      ],
    );
  }
}
