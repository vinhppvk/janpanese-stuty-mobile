import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/dto/response/example/example_user_dto.dart';

part 'example_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ExampleApi {
  factory ExampleApi(Dio dio, {String baseUrl}) = _ExampleApi;

  @GET('/users')
  Future<List<ExampleUserDto>> getExampleUsers();
}
