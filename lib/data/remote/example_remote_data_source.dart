import '../api/example/example_api.dart';
import '../model/dto/response/example/example_user_dto.dart';

class ExampleRemoteDataSource {
  ExampleRemoteDataSource(this._api);

  final ExampleApi _api;

  Future<List<ExampleUserDto>> getExampleUsers() async => _api.getExampleUsers();
}
