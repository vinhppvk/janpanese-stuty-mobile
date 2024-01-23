class FailureMessages {
  // Http Error
  static const String noConnection = 'No connection';

  static const String httpBadRequest =
      'Error 400: Invalid request. Please check and try again.';

  static const String httpUnauthorized = 'Error 401: Unauthorized access. Please log in.';

  static const String httpForbidden =
      'Error 403: Access denied. Contact support if this is unexpected.';

  static const String httpNotFound = 'Error 404: Resource not found. Check the URL.';

  static const String httpUnprocessableEntity =
      'Error 422: Invalid input. Please review and retry.';

  static const String httpInternalServerError =
      'Error 500: Server error. Please try again later.';

  static const String httpMethodNotAllowedError =
      'Error 405: Method Not Allowed. Check API documentation for valid methods.';

  static const String httpConflictError =
      'Error 409: Conflict. Resource state mismatch. Please retry with updated state.';

  // In app Exception
  static const String undefined = 'Oops, something went wrong!';

  static const String badKeyOfValue =
      'Invalid key, value pair when parsing json';
}
