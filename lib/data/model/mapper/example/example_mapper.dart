import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../dto/example/example_user_dto.dart';
import '../../entity/example/example_user.dart';
import 'example_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<ExampleUserDto, ExampleUser>(),
  MapType<AddressDto, Address>(),
  MapType<GeoDto, Geo>(),
  MapType<CompanyDto, Company>(),
])
class ExampleMappr extends $ExampleMappr {}
