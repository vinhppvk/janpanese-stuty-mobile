import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../dto/enum/gender_dto.dart';
import '../../entity/enum/gender.dart';
import 'common_mapper.auto_mappr.dart';

@AutoMappr(
  <MapType<Object, Object>>[
    MapType<Gender, GenderDto>(),
  ],
)
class CommonMappr extends $CommonMappr {
  const CommonMappr();
}
