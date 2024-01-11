import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../asset/image_asset.dart';
import '../../widget/dialog/custom_alert_dialog.dart';
import '../enum/snackbar_mode.dart';
import 'snack_bar.dart';

class ErrorHandler {
  static void handleNetworkError(BuildContext context, Failure failure,
      {VoidCallback? onConfirm, VoidCallback? onCancel}) {
    switch (failure) {
      case HttpBadRequestFailure(message: final String message):
      case HttpUnauthorizedFailure(message: final String message):
      case HttpForbiddenFailure(message: final String message):
      case HttpNotFoundFailure(message: final String message):
      case HttpUnprocessableEntityFailure(message: final String message):
      case BadKeyOfValueFailure(message: final String message):
      case NoConnectionFailure(message: final String message):
      case UndefinedFailure(message: final String message):
        showErrorSnackBar(context, message: message);
      case HttpInternalServerErrorFailure(message: final String title):
        showErrorDialog(
          context,
          title: Text(title),
          onPrimaryAction: onConfirm ?? () => context.pop(),
          onSecondaryAction: onCancel,
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
