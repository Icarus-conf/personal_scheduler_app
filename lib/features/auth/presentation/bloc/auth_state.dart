part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(RequestStatus.init) RequestStatus loginStatus,
    UserModel? userModelLogin,
    Failures? loginFailures,
    @Default(RequestStatus.init) RequestStatus registerStatus,
    UserModel? userModelRegister,
    Failures? registerFailures,
  }) = _AuthState;
}
