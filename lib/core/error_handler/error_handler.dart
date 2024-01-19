import 'package:flutter/material.dart';

import '../../app/asset/image_asset.dart';
import '../../app/utils/constant/failure_messages.dart';
import '../../app/utils/enum/snackbar_mode.dart';
import '../../app/utils/helper/snack_bar.dart';
import '../../app/widget/dialog/custom_alert_dialog.dart';
import '../error/failure.dart';

class ErrorHandler {
  static void handleNetworkFailure(
    BuildContext context,
    Failure<dynamic> failure, {
    String primaryActionText = 'OK',
    String secondaryActionText = 'Cancel',
    VoidCallback? onPrimaryAction,
    VoidCallback? onSecondaryAction,
  }) {
    switch (failure) {
      case HttpBadRequestFailure<dynamic>(message: final String? message):
      case HttpUnauthorizedFailure<dynamic>(message: final String? message):
      case HttpForbiddenFailure<dynamic>(message: final String? message):
      case HttpNotFoundFailure<dynamic>(message: final String? message):
      case HttpMethodNotAllowedFailure<dynamic>(message: final String? message):
      case HttpConflictErrorFailure<dynamic>(message: final String? message):
      case HttpUnprocessableEntityFailure<dynamic>(
          message: final String? message
        ):
      case BadKeyOfValueFailure<dynamic>(message: final String? message):
      case NoConnectionFailure<dynamic>(message: final String? message):
        showErrorSnackBar(context, message: message ?? '');
      case UndefinedFailure<dynamic>(message: final String? message):
        showErrorSnackBar(context, message: message ?? FailureMessages.undefined);
      case HttpInternalServerErrorFailure<dynamic>(
          message: final String? message
        ):
        showErrorDialog(
          context,
          message: Text(message ?? ''),
          primaryActionText: primaryActionText,
          secondaryActionText: secondaryActionText,
          onPrimaryAction: onPrimaryAction,
          onSecondaryAction: onSecondaryAction,
        );
    }
  }

  static void showErrorSnackBar(BuildContext context,
      {required String message}) {
    showCustomSnackBar(
      context,
      message: message,
      mode: SnackBarMode.error,
    );
  }

  static void showErrorDialog(
    BuildContext context, {
    Widget? title,
    Widget? message,
    String primaryActionText = 'OK',
    String secondaryActionText = 'Cancel',
    VoidCallback? onPrimaryAction,
    VoidCallback? onSecondaryAction,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: title ?? const Text('An Error Occurred!'),
          message: message ??
              const Text(
                  'Oops, an unexpected error occurred. Please try again later'),
          image: Image.asset(ImageAsset.errorIllustration),
          primaryActionText: primaryActionText,
          secondaryActionText: secondaryActionText,
          onPrimaryAction: onPrimaryAction,
          onSecondaryAction: onSecondaryAction,
        );
      },
    );
  }
}
