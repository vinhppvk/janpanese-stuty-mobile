import 'package:intl/intl.dart';

extension NumberX on num {
  String getShortForm() => NumberFormat.compact(locale: 'en_US').format(this);

  String getThousandDivider({int decimalDigit = 2}) {
    return NumberFormat.decimalPatternDigits(
      locale: 'en_US',
      decimalDigits: decimalDigit,
    ).format(this);
  }
}

extension DoubleX on double {
  String getRatingForm() {
    final bool isWholeNumber = roundToDouble() == this;
    return toStringAsFixed(isWholeNumber ? 0 : 1);
  }
}
