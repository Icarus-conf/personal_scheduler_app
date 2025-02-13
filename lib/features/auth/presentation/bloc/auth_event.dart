part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.loginEvent(
      {required String email, required String password}) = LoginEvent;
  const factory AuthEvent.registerEvent({
    required String email,
    required String password,
    required String name,
    File? imageFile,
  }) = RegisterEvent;
  const factory AuthEvent.resetPasswordEvent({required String email}) =
      ResetPasswordEvent;
}
