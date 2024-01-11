class FailureMessages {
  // Http Error
  static const String noConnection = 'No connection';

  static const String httpBadRequest =
      'Invalid request. Please check and try again.';

  static const String httpUnauthorized = 'Unauthorized access. Please log in.';

  static const String httpForbidden =
      'Access denied. Contact support if this is unexpected.';

  static const String httpNotFound = 'Resource not found. Check the URL.';

  static const String httpUnprocessableEntity =
      'Invalid input. Please review and retry.';

  static const String httpInternalServerError =
      'Server error. Please try again later.';

  // In app Exception
  static const String undefined = 'Oops, something went wrong!';

  static const String badKeyOfValue =
      'Invalid key, value pair when parsing json';
}
