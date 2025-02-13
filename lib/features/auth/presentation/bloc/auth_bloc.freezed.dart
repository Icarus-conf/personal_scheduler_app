// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(
            String email, String password, String name, File? imageFile)
        registerEvent,
    required TResult Function(String email) resetPasswordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult? Function(String email)? resetPasswordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginEvent,
    TResult Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult Function(String email)? resetPasswordEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(RegisterEvent value) registerEvent,
    required TResult Function(ResetPasswordEvent value) resetPasswordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(RegisterEvent value)? registerEvent,
    TResult? Function(ResetPasswordEvent value)? resetPasswordEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(RegisterEvent value)? registerEvent,
    TResult Function(ResetPasswordEvent value)? resetPasswordEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(
            String email, String password, String name, File? imageFile)
        registerEvent,
    required TResult Function(String email) resetPasswordEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult? Function(String email)? resetPasswordEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginEvent,
    TResult Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult Function(String email)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(RegisterEvent value) registerEvent,
    required TResult Function(ResetPasswordEvent value) resetPasswordEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(RegisterEvent value)? registerEvent,
    TResult? Function(ResetPasswordEvent value)? resetPasswordEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(RegisterEvent value)? registerEvent,
    TResult Function(ResetPasswordEvent value)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(
            String email, String password, String name, File? imageFile)
        registerEvent,
    required TResult Function(String email) resetPasswordEvent,
  }) {
    return loginEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult? Function(String email)? resetPasswordEvent,
  }) {
    return loginEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginEvent,
    TResult Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult Function(String email)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(RegisterEvent value) registerEvent,
    required TResult Function(ResetPasswordEvent value) resetPasswordEvent,
  }) {
    return loginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(RegisterEvent value)? registerEvent,
    TResult? Function(ResetPasswordEvent value)? resetPasswordEvent,
  }) {
    return loginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(RegisterEvent value)? registerEvent,
    TResult Function(ResetPasswordEvent value)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent(
      {required final String email,
      required final String password}) = _$LoginEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
          _$RegisterEventImpl value, $Res Function(_$RegisterEventImpl) then) =
      __$$RegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name, File? imageFile});
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
      _$RegisterEventImpl _value, $Res Function(_$RegisterEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? imageFile = freezed,
  }) {
    return _then(_$RegisterEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$RegisterEventImpl implements RegisterEvent {
  const _$RegisterEventImpl(
      {required this.email,
      required this.password,
      required this.name,
      this.imageFile});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'AuthEvent.registerEvent(email: $email, password: $password, name: $name, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, imageFile);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      __$$RegisterEventImplCopyWithImpl<_$RegisterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(
            String email, String password, String name, File? imageFile)
        registerEvent,
    required TResult Function(String email) resetPasswordEvent,
  }) {
    return registerEvent(email, password, name, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult? Function(String email)? resetPasswordEvent,
  }) {
    return registerEvent?.call(email, password, name, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginEvent,
    TResult Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult Function(String email)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (registerEvent != null) {
      return registerEvent(email, password, name, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(RegisterEvent value) registerEvent,
    required TResult Function(ResetPasswordEvent value) resetPasswordEvent,
  }) {
    return registerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(RegisterEvent value)? registerEvent,
    TResult? Function(ResetPasswordEvent value)? resetPasswordEvent,
  }) {
    return registerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(RegisterEvent value)? registerEvent,
    TResult Function(ResetPasswordEvent value)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (registerEvent != null) {
      return registerEvent(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements AuthEvent {
  const factory RegisterEvent(
      {required final String email,
      required final String password,
      required final String name,
      final File? imageFile}) = _$RegisterEventImpl;

  String get email;
  String get password;
  String get name;
  File? get imageFile;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordEventImplCopyWith<$Res> {
  factory _$$ResetPasswordEventImplCopyWith(_$ResetPasswordEventImpl value,
          $Res Function(_$ResetPasswordEventImpl) then) =
      __$$ResetPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordEventImpl>
    implements _$$ResetPasswordEventImplCopyWith<$Res> {
  __$$ResetPasswordEventImplCopyWithImpl(_$ResetPasswordEventImpl _value,
      $Res Function(_$ResetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordEventImpl implements ResetPasswordEvent {
  const _$ResetPasswordEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPasswordEvent(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      __$$ResetPasswordEventImplCopyWithImpl<_$ResetPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(
            String email, String password, String name, File? imageFile)
        registerEvent,
    required TResult Function(String email) resetPasswordEvent,
  }) {
    return resetPasswordEvent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginEvent,
    TResult? Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult? Function(String email)? resetPasswordEvent,
  }) {
    return resetPasswordEvent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginEvent,
    TResult Function(
            String email, String password, String name, File? imageFile)?
        registerEvent,
    TResult Function(String email)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (resetPasswordEvent != null) {
      return resetPasswordEvent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(LoginEvent value) loginEvent,
    required TResult Function(RegisterEvent value) registerEvent,
    required TResult Function(ResetPasswordEvent value) resetPasswordEvent,
  }) {
    return resetPasswordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(LoginEvent value)? loginEvent,
    TResult? Function(RegisterEvent value)? registerEvent,
    TResult? Function(ResetPasswordEvent value)? resetPasswordEvent,
  }) {
    return resetPasswordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(LoginEvent value)? loginEvent,
    TResult Function(RegisterEvent value)? registerEvent,
    TResult Function(ResetPasswordEvent value)? resetPasswordEvent,
    required TResult orElse(),
  }) {
    if (resetPasswordEvent != null) {
      return resetPasswordEvent(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordEvent implements AuthEvent {
  const factory ResetPasswordEvent({required final String email}) =
      _$ResetPasswordEventImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  RequestStatus get loginStatus => throw _privateConstructorUsedError;
  UserModel? get userModelLogin => throw _privateConstructorUsedError;
  Failures? get loginFailures => throw _privateConstructorUsedError;
  RequestStatus get registerStatus => throw _privateConstructorUsedError;
  UserModel? get userModelRegister => throw _privateConstructorUsedError;
  Failures? get registerFailures => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {RequestStatus loginStatus,
      UserModel? userModelLogin,
      Failures? loginFailures,
      RequestStatus registerStatus,
      UserModel? userModelRegister,
      Failures? registerFailures});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? userModelLogin = freezed,
    Object? loginFailures = freezed,
    Object? registerStatus = null,
    Object? userModelRegister = freezed,
    Object? registerFailures = freezed,
  }) {
    return _then(_value.copyWith(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      userModelLogin: freezed == userModelLogin
          ? _value.userModelLogin
          : userModelLogin // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      loginFailures: freezed == loginFailures
          ? _value.loginFailures
          : loginFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      userModelRegister: freezed == userModelRegister
          ? _value.userModelRegister
          : userModelRegister // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      registerFailures: freezed == registerFailures
          ? _value.registerFailures
          : registerFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus loginStatus,
      UserModel? userModelLogin,
      Failures? loginFailures,
      RequestStatus registerStatus,
      UserModel? userModelRegister,
      Failures? registerFailures});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? userModelLogin = freezed,
    Object? loginFailures = freezed,
    Object? registerStatus = null,
    Object? userModelRegister = freezed,
    Object? registerFailures = freezed,
  }) {
    return _then(_$AuthStateImpl(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      userModelLogin: freezed == userModelLogin
          ? _value.userModelLogin
          : userModelLogin // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      loginFailures: freezed == loginFailures
          ? _value.loginFailures
          : loginFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      userModelRegister: freezed == userModelRegister
          ? _value.userModelRegister
          : userModelRegister // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      registerFailures: freezed == registerFailures
          ? _value.registerFailures
          : registerFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.loginStatus = RequestStatus.init,
      this.userModelLogin,
      this.loginFailures,
      this.registerStatus = RequestStatus.init,
      this.userModelRegister,
      this.registerFailures});

  @override
  @JsonKey()
  final RequestStatus loginStatus;
  @override
  final UserModel? userModelLogin;
  @override
  final Failures? loginFailures;
  @override
  @JsonKey()
  final RequestStatus registerStatus;
  @override
  final UserModel? userModelRegister;
  @override
  final Failures? registerFailures;

  @override
  String toString() {
    return 'AuthState(loginStatus: $loginStatus, userModelLogin: $userModelLogin, loginFailures: $loginFailures, registerStatus: $registerStatus, userModelRegister: $userModelRegister, registerFailures: $registerFailures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.userModelLogin, userModelLogin) ||
                other.userModelLogin == userModelLogin) &&
            (identical(other.loginFailures, loginFailures) ||
                other.loginFailures == loginFailures) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.userModelRegister, userModelRegister) ||
                other.userModelRegister == userModelRegister) &&
            (identical(other.registerFailures, registerFailures) ||
                other.registerFailures == registerFailures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, userModelLogin,
      loginFailures, registerStatus, userModelRegister, registerFailures);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final RequestStatus loginStatus,
      final UserModel? userModelLogin,
      final Failures? loginFailures,
      final RequestStatus registerStatus,
      final UserModel? userModelRegister,
      final Failures? registerFailures}) = _$AuthStateImpl;

  @override
  RequestStatus get loginStatus;
  @override
  UserModel? get userModelLogin;
  @override
  Failures? get loginFailures;
  @override
  RequestStatus get registerStatus;
  @override
  UserModel? get userModelRegister;
  @override
  Failures? get registerFailures;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
