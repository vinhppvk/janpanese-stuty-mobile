
class InAppException implements Exception {
  InAppException({this.message});

  final String? message;
}

class UndefinedException implements InAppException {
  UndefinedException({this.message});

  @override
  final String? message;
}

class NoConnectionException implements InAppException {
  NoConnectionException({this.message});

  @override
  final String? message;
}

class HttpBadRequestException implements InAppException {
  HttpBadRequestException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpUnauthorizedException implements InAppException {
  HttpUnauthorizedException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpForbiddenException implements InAppException {
  HttpForbiddenException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpNotFoundException implements InAppException {
  HttpNotFoundException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpUnprocessableEntityException implements InAppException {
  HttpUnprocessableEntityException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpInternalServerErrorException implements InAppException {
  HttpInternalServerErrorException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpMethodNotAllowedException implements InAppException {
  HttpMethodNotAllowedException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}

class HttpConflictException implements InAppException {
  HttpConflictException({this.message, this.data});

  @override
  final String? message;

  final Object? data;
}
