import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';
import 'package:personal_scheduler_app/features/auth/domain/use_cases/login_use_case.dart';
import 'package:personal_scheduler_app/features/auth/domain/use_cases/register_use_case.dart';
import 'package:personal_scheduler_app/features/auth/domain/use_cases/reset_password_use_case.dart';
import 'package:injectable/injectable.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  AuthBloc(
    this.loginUseCase,
    this.registerUseCase,
    this.resetPasswordUseCase,
  ) : super(const AuthState()) {
    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(
        loginStatus: RequestStatus.loading,
        registerStatus: RequestStatus.init,
      ));
      var result = await loginUseCase(event.email, event.password);
      result.fold(
        (failure) {
          emit(state.copyWith(
              loginStatus: RequestStatus.failure, loginFailures: failure));
        },
        (model) {
          emit(state.copyWith(
              loginStatus: RequestStatus.success, userModelLogin: model));
        },
      );
    });

    // In AuthBloc constructor
    on<RegisterEvent>((event, emit) async {
      emit(state.copyWith(
        registerStatus: RequestStatus.loading,
        loginStatus: RequestStatus.init,
      ));

      var result = await registerUseCase(
        event.email,
        event.password,
        event.name,
        event.imageFile,
      );

      result.fold(
        (failure) {
          emit(state.copyWith(
              registerStatus: RequestStatus.failure,
              registerFailures: failure));
        },
        (model) {
          emit(state.copyWith(
              registerStatus: RequestStatus.success, userModelRegister: model));
        },
      );
    });
  }
}
