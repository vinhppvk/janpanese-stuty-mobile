import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../app/utils/constant/date_formats.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../dto/register/register_user_params_dto.dart';
import '../../entity/register/register_user_params.dart';

import 'register_step_1_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<RegisterUserParams, RegisterUserParamsDto>(
    fields: <Field>[
      Field('birthday', custom: RegisterStep1Mappr.mapBirthdayToServerDate),
    ],
  ),
])
class RegisterStep1Mappr extends $RegisterStep1Mappr {
  static String? mapBirthdayToServerDate(RegisterUserParams params) =>
      params.birthday?.format(pattern: DateFormats.server);
}
