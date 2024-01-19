import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../dto/request/register/verify_otp_params_dto.dart';
import '../../dto/response/register/verify_otp_result_dto.dart';
import '../../dto/validation/register/verify_otp_validation_dto.dart';
import '../../entity/request/register/verify_otp_params.dart';
import '../../entity/response/register/verify_otp_result.dart';
import '../../entity/validation/register/verify_otp_validation.dart';
import '../utils/common_type_converter.dart';
import 'verify_otp_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<VerifyOtpParams, VerifyOtpParamsDto>(),
  MapType<VerifyOtpResultDto, VerifyOtpResult>(
    fields: <Field>[
      Field('email', whenNull: ''),
      Field('authCode', whenNull: -1),
    ],
  ),
  MapType<VerifyOtpValidationDto, VerifyOtpValidation>(
    converters: <TypeConverter<Object?, Object?>>[
      TypeConverter<List<String>?, String?>(CommonTypeConverter.firstErrorMsg),
    ],
  )
])
class VerifyOtpMappr extends $VerifyOtpMappr {}
