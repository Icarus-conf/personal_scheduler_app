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
    @Default(RequestStatus.init) RequestStatus checkAutoLoginStatus,
    Failures? checkAutoLoginFailures,
    @Default(RequestStatus.init) RequestStatus logOutStatus,
    Failures? logOutFailures,
    @Default(RequestStatus.init) RequestStatus resetPassStatus,
    Failures? resetPassFailures,
  }) = _AuthState;
}
