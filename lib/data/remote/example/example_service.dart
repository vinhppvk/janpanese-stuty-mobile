import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/dto/example/example_user_dto.dart';

part 'example_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ExampleService {
  factory ExampleService(Dio dio, {String baseUrl}) =
      _ExampleService;

  @GET('/users')
  Future<List<ExampleUserDto>> getExampleUsers();
}