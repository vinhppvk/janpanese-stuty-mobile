import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../dto/register/resend_otp_params_dto.dart';
import '../../dto/register/resend_otp_result_dto.dart';
import '../../dto/register/verify_otp_params_dto.dart';
import '../../dto/register/verify_otp_result_dto.dart';
import '../../entity/register/resend_otp_params.dart';
import '../../entity/register/resend_otp_result.dart';
import '../../entity/register/verify_otp_params.dart';
import '../../entity/register/verify_otp_result.dart';
import 'register_step_2_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<ResendOtpParams, ResendOtpParamsDto>(),
  MapType<ResendOtpResultDto, ResendOtpResult>(
    fields: <Field>[
      Field('email', whenNull: ''),
    ],
  ),
  MapType<VerifyOtpParams, VerifyOtpParamsDto>(),
  MapType<VerifyOtpResultDto, VerifyOtpResult>(
    fields: <Field>[
      Field('email', whenNull: ''),
      Field('authCode', whenNull: -1),
    ],
  ),
])
class RegisterStep2Mappr extends $RegisterStep2Mappr {}
