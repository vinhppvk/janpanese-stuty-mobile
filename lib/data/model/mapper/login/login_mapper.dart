import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../dto/request/login/login_params_dto.dart';
import '../../dto/response/login/login_result_dto.dart';
import '../../dto/validation/login/login_validation_dto.dart';
import '../../entity/request/login/login_params.dart';
import '../../entity/response/login/login_result.dart';
import '../../entity/validation/login/login_validation.dart';

import '../utils/common_type_converter.dart';
import 'login_mapper.auto_mappr.dart';

@AutoMappr(
  <MapType<Object, Object>>[
    MapType<LoginParams, LoginParamsDto>(),
    MapType<LoginResultDto, LoginResult>(),
    MapType<LoginValidationDto, LoginValidation>(),
  ],
  converters: <TypeConverter<Object?, Object?>>[
    TypeConverter<List<String>?, String?>(CommonTypeConverter.firstErrorMsg),
  ],
)
class LoginMappr extends $LoginMappr {}
