import '../model/dto/example/example_user_dto.dart';
import '../model/entity/example/example_user.dart';
import '../model/mapper/example/example_mapper.dart';
import '../remote/example/example_service.dart';

class ExampleRepository {
  const ExampleRepository(this._exampleService);

  final ExampleService _exampleService;

  Future<List<ExampleUser>> getExampleUsers() async {
    final List<ExampleUserDto> response = await _exampleService.getExampleUsers();
    return ExampleMappr().convertList<ExampleUserDto, ExampleUser>(response);
  }
}
