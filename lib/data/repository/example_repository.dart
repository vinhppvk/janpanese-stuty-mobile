import '../model/dto/example/example_user_dto.dart';
import '../model/remote/example/example_user.dart';
import '../remote/service/example/example_service.dart';

class ExampleRepository {
  const ExampleRepository(this._jsonPlaceholderService);

  final ExampleService _jsonPlaceholderService;

  Future<List<ExampleUserDto>> getExampleUsers() {
    return _jsonPlaceholderService.getExampleUsers();
  }
}
