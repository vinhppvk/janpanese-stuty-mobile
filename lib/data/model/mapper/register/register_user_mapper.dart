import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../../../app/utils/constant/date_formats.dart';
import '../../../../app/utils/extension/date_time.dart';
import '../../dto/register/register_user_params_dto.dart';
import '../../entity/register/register_user_params.dart';
import 'register_user_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<RegisterUserParams, RegisterUserParamsDto>(
    fields: <Field>[
      Field('birthday', custom: RegisterUserMappr.mapBirthdayToServerDate),
    ],
  ),
])
class RegisterUserMappr extends $RegisterUserMappr {
  static String? mapBirthdayToServerDate(RegisterUserParams params) =>
      params.birthday?.format(pattern: DateFormats.server);
}
