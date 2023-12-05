import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

import 'validation_messages.dart';
import 'validators.dart';

class SupportValidators {
  static FormFieldValidator<T> compose<T>(
      List<FormFieldValidator<T>> validators) {
    return (T? valueCandidate) {
      for (final FormFieldValidator<T> validator in validators) {
        final String? validationResult = validator.call(valueCandidate);
        if (validationResult != null) {
          return validationResult;
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> required<T>({
    required String fieldName,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate == null ||
          (valueCandidate is String && valueCandidate.trim().isEmpty) ||
          (valueCandidate is Iterable && valueCandidate.isEmpty) ||
          (valueCandidate is Map && valueCandidate.isEmpty)) {
        return errorText ?? ValidationMessages.m001(fieldName);
      }
      return null;
    };
  }

  static FormFieldValidator<T> equal<T>(Object value,
          {required String fieldName, String? errorText}) =>
      (T? valueCandidate) => valueCandidate != value
          ? errorText ?? ValidationMessages.undefined()
          : null;

  static FormFieldValidator<T> notEqual<T>(Object value, {String? errorText}) =>
      (T? valueCandidate) => valueCandidate == value
          ? errorText ?? ValidationMessages.undefined()
          : null;

  static FormFieldValidator<T> min<T>(
    num min, {
    required String fieldName,
    bool inclusive = true,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate != null) {
        assert(valueCandidate is num || valueCandidate is String);
        final num? number = valueCandidate is num
            ? valueCandidate
            : num.tryParse(valueCandidate.toString());

        if (number != null && (inclusive ? number < min : number <= min)) {
          return errorText ?? ValidationMessages.undefined();
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> max<T>(
    num max, {
    required String fieldName,
    bool inclusive = true,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate != null) {
        assert(valueCandidate is num || valueCandidate is String);
        final num? number = valueCandidate is num
            ? valueCandidate
            : num.tryParse(valueCandidate.toString());

        if (number != null && (inclusive ? number > max : number >= max)) {
          return errorText ?? ValidationMessages.undefined();
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> minLength<T>(int minLength,
      {required String fieldName, bool allowEmpty = false, String? errorText}) {
    assert(minLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      int valueLength = 0;
      if (valueCandidate is String) {
        valueLength = valueCandidate.length;
      }
      if (valueCandidate is Iterable) {
        valueLength = valueCandidate.length;
      }
      return valueLength < minLength && (!allowEmpty || valueLength > 0)
          ? errorText ?? ValidationMessages.undefined()
          : null;
    };
  }

  static FormFieldValidator<T> maxLength<T>(
    int maxLength, {
    required String fieldName,
    String? errorText,
  }) {
    assert(maxLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      int valueLength = 0;
      if (valueCandidate is String) {
        valueLength = valueCandidate.length;
      }
      if (valueCandidate is Iterable) {
        valueLength = valueCandidate.length;
      }
      return null != valueCandidate && valueLength > maxLength
          ? errorText ?? ValidationMessages.m018(fieldName, maxLength)
          : null;
    };
  }

  static FormFieldValidator<T> inRangeLength<T>(
    int minLength,
    int maxLength, {
    required String fieldName,
    String? errorText,
  }) {
    assert(maxLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      int valueLength = 0;
      if (valueCandidate is String) {
        valueLength = valueCandidate.length;
      }
      if (valueCandidate is Iterable) {
        valueLength = valueCandidate.length;
      }
      return null != valueCandidate &&
              (valueLength > maxLength || valueLength < minLength)
          ? errorText ??
              ValidationMessages.m003(fieldName, minLength, maxLength)
          : null;
    };
  }

  static FormFieldValidator<T> equalLength<T>(
    int length, {
    required String fieldName,
    bool allowEmpty = false,
    String? errorText,
  }) {
    assert(length > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate is int ||
          valueCandidate == null);
      int valueLength = 0;

      if (valueCandidate is int) {
        valueLength = valueCandidate.toString().length;
      }
      if (valueCandidate is String) {
        valueLength = valueCandidate.length;
      }
      if (valueCandidate is Iterable) {
        valueLength = valueCandidate.length;
      }

      return valueLength != length && (!allowEmpty || valueLength > 0)
          ? errorText ?? ValidationMessages.undefined()
          : null;
    };
  }

  static FormFieldValidator<String> email({
    String? errorText,
  }) =>
      (String? valueCandidate) =>
          (valueCandidate?.isNotEmpty ?? false) && !isEmail(valueCandidate!)
              ? errorText ?? ValidationMessages.m002()
              : null;

  static FormFieldValidator<String> phone({
    String? errorText,
  }) =>
      (String? valueCandidate) =>
          (valueCandidate?.isNotEmpty ?? false) && !isPhone(valueCandidate!)
              ? errorText ?? ValidationMessages.undefined()
              : null;

  static FormFieldValidator<String> match(
    String pattern, {
    String? errorText,
  }) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              !RegExp(pattern).hasMatch(valueCandidate!)
          ? errorText ?? ValidationMessages.undefined()
          : null;

  static FormFieldValidator<String> numeric({
    required String fieldName,
    String? errorText,
  }) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              null == num.tryParse(valueCandidate!)
          ? errorText ?? ValidationMessages.m006(fieldName)
          : null;

  static FormFieldValidator<String> integer(
          {required String fieldName, String? errorText, int? radix}) =>
      (String? valueCandidate) => true == valueCandidate?.isNotEmpty &&
              null == int.tryParse(valueCandidate!, radix: radix)
          ? errorText ?? ValidationMessages.undefined()
          : null;

  static FormFieldValidator<String> dateString({
    required String fieldName,
    String? errorText,
  }) =>
      (String? valueCandidate) =>
          true == valueCandidate?.isNotEmpty && !isDate(valueCandidate!)
              ? errorText ?? ValidationMessages.undefined()
              : null;

  static FormFieldValidator<File> file(
    int maxSize,
    FileCapacityUnit unit, {
    required String fieldName,
    String? errorText,
  }) {
    assert(maxSize > 0);
    return (File? valueCandidate) {
      const List<FileCapacityUnit> suffixes = <FileCapacityUnit>[
        FileCapacityUnit.b,
        FileCapacityUnit.kb,
        FileCapacityUnit.mb,
        FileCapacityUnit.gb
      ];

      return (valueCandidate != null &&
              valueCandidate.lengthSync().toDouble() /
                      pow(1024, suffixes.indexOf(unit)) >
                  maxSize)
          ? errorText ?? ValidationMessages.m019()
          : null;
    };
  }

  static FormFieldValidator<String> password({String? field}) {
    return match(
      alphanumericalSpecialChars.pattern,
      errorText: ValidationMessages.undefined(),
    );
  }

  static FormFieldValidator<String> confirmPassword(
      {required TextEditingController? controller}) {
    return (String? valueCandidate) {
      if (valueCandidate != null && valueCandidate.isNotEmpty) {
        if (valueCandidate != controller?.text) {
          return ValidationMessages.m025();
        }
      }
      return null;
    };
  }

  static FormFieldValidator<bool> checkRequired({required String? message}) {
    return (bool? valueCandidate) {
      if (valueCandidate == null || !valueCandidate) {
        return message ?? ValidationMessages.undefined();
      }
      return null;
    };
  }
}

enum FileCapacityUnit { gb, mb, kb, b }
