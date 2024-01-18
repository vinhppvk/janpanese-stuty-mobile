import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/dto/response/example/example_user_dto.dart';

part 'example_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ExampleRemoteDataSource {
  factory ExampleRemoteDataSource(Dio dio, {String baseUrl}) =
      _ExampleRemoteDataSource;

  @GET('/users')
  Future<List<ExampleUserDto>> getExampleUsers();
}
