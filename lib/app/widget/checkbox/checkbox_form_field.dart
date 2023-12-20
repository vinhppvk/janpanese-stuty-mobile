import 'package:flutter/material.dart';

import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    super.key,
    Widget? title,
    super.onSaved,
    super.validator,
    bool super.initialValue = false,
  }) : super(
          builder: (FormFieldState<bool> state) {
            return CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 2.0),
              dense: state.hasError,
              title: title,
              value: state.value,
              onChanged: state.didChange,
              subtitle: state.hasError
                  ? Builder(
                      builder: (BuildContext context) => Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          state.errorText ?? '',
                          style: TTextStyle.getBodySmall(
                            fontWeight: TFontWeight.medium,
                            color: context.colorScheme.error,
                          ),
                        ),
                      ),
                    )
                  : null,
              controlAffinity: ListTileControlAffinity.leading,
            );
          },
        );
}
