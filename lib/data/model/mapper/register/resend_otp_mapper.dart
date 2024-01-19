import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../dto/request/register/resend_otp_params_dto.dart';
import '../../dto/response/register/resend_otp_result_dto.dart';
import '../../entity/request/register/resend_otp_params.dart';
import '../../entity/response/register/resend_otp_result.dart';
import 'resend_otp_mapper.auto_mappr.dart';

@AutoMappr(<MapType<Object, Object>>[
  MapType<ResendOtpParams, ResendOtpParamsDto>(),
  MapType<ResendOtpResultDto, ResendOtpResult>(
    fields: <Field>[
      Field('email', whenNull: ''),
    ],
  ),
])
class ResendOtpMappr extends $ResendOtpMappr {}
