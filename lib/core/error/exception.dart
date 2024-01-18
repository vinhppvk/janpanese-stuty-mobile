import '../../data/model/dto/base/base_response.dart';

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
  HttpUnauthorizedException({this.message});

  @override
  final String? message;
}

class HttpForbiddenException implements InAppException {
  HttpForbiddenException({this.message});

  @override
  final String? message;
}

class HttpNotFoundException implements InAppException {
  HttpNotFoundException({this.message});

  @override
  final String? message;
}

class HttpUnprocessableEntityException implements InAppException {
  HttpUnprocessableEntityException({this.message});

  @override
  final String? message;
}

class HttpInternalServerErrorException implements InAppException {
  HttpInternalServerErrorException({this.message});

  @override
  final String? message;
}

class HttpMethodNotAllowedException implements InAppException {
  HttpMethodNotAllowedException({this.message});

  @override
  final String? message;
}

class HttpConflictException implements InAppException {
  HttpConflictException({this.message});

  @override
  final String? message;
}
