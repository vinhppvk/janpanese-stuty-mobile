import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../../data/model/entity/request/register/resend_otp_params.dart';
import '../../../../data/model/entity/request/register/verify_otp_params.dart';
import '../../../../data/model/entity/response/register/resend_otp_result.dart';
import '../../../../data/model/entity/response/register/verify_otp_result.dart';
import '../../../../data/model/entity/validation/register/verify_otp_validation.dart';
import '../../../../domain/register/resend_otp_usecase.dart';
import '../../../../domain/register/verify_otp_usecase.dart';

part 'register_step_2_event.dart';

part 'register_step_2_state.dart';

part 'register_step_2_bloc.freezed.dart';

class RegisterStep2Bloc extends Bloc<RegisterStep2Event, RegisterStep2State> {
  RegisterStep2Bloc(
    this._resendOtpUseCase,
    this._verifyOtpUseCase,
  ) : super(const RegisterStep2State.initial()) {
    on<RegisterStep2Event>(_onRegisterStep2Event);
  }

  final ResendOtpUseCase _resendOtpUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;

  Future<void> _onRegisterStep2Event(
      RegisterStep2Event event, Emitter<RegisterStep2State> emit) async {
    switch (event) {
      case RegisterStep2EventResendOtpCode(email: final String email):
        await _onResendOtpCode(emit, email: email);
      case RegisterStep2EventVerifyOtpCode(
          email: final String email,
          otpCode: final String otpCode,
        ):
        await _onVerifyOtpCode(emit, email: email, otpCode: otpCode);
    }
  }

  Future<void> _onResendOtpCode(Emitter<RegisterStep2State> emit,
      {required String email}) async {
    emit(const RegisterStep2State.loading());

    final Either<Failure<void>, ResendOtpResult> dataState =
        await _resendOtpUseCase(params: ResendOtpParams(email: email));

    dataState.fold(
      (Failure<void> l) => emit(RegisterStep2State.error(l)),
      (ResendOtpResult r) => emit(RegisterStep2State.resendOtpResult(r)),
    );
  }

  Future<void> _onVerifyOtpCode(Emitter<RegisterStep2State> emit,
      {required String email, required String otpCode}) async {
    emit(const RegisterStep2State.loading());

    final Either<Failure<VerifyOtpValidation>, VerifyOtpResult> dataState =
        await _verifyOtpUseCase(
            params: VerifyOtpParams(email: email, otpCode: otpCode));

    dataState.fold(
      (Failure<VerifyOtpValidation> l) =>
          emit(RegisterStep2State.verifyOtpError(l)),
      (VerifyOtpResult r) => emit(RegisterStep2State.verifyOtpResult(r)),
    );
  }
}
