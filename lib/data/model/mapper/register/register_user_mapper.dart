import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../app/utils/constant/date_formats.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../dto/request/register/register_user_params_dto.dart';
import '../../dto/validation/register/register_user_validation_dto.dart';
import '../../entity/request/register/register_user_params.dart';
import '../../entity/validation/register/register_user_validation.dart';
import '../utils/common_mapper.dart';
import '../utils/common_type_converter.dart';
import 'register_user_mapper.auto_mappr.dart';

@AutoMappr(
  includes: <AutoMapprInterface>[
    CommonMappr(),
  ],
  <MapType<Object, Object>>[
    MapType<RegisterUserParams, RegisterUserParamsDto>(
      converters: <TypeConverter<Object?, Object?>>[
        TypeConverter<DateTime?, String?>(RegisterUserMappr.mapToServerDate),
      ],
    ),
    MapType<RegisterUserValidationDto, RegisterUserValidation>(
      converters: <TypeConverter<Object?, Object?>>[
        TypeConverter<List<String>?, String?>(
            CommonTypeConverter.firstErrorMsg),
      ],
    ),
  ],
)
class RegisterUserMappr extends $RegisterUserMappr {
  static String? mapToServerDate(DateTime? dateTime) =>
      dateTime?.format(pattern: DateFormats.serverDefaultFormat);
}
