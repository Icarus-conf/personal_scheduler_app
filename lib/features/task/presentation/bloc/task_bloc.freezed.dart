// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId, DateTime date) fetchTasksForDay,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId, DateTime date)? fetchTasksForDay,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId, DateTime date)? fetchTasksForDay,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTasksForDayEvent value) fetchTasksForDay,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
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
    extends _$TaskEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TaskEvent.started()';
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
    required TResult Function(String userId, DateTime date) fetchTasksForDay,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId, DateTime date)? fetchTasksForDay,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId, DateTime date)? fetchTasksForDay,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
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
    required TResult Function(FetchTasksForDayEvent value) fetchTasksForDay,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchTasksForDayEventImplCopyWith<$Res> {
  factory _$$FetchTasksForDayEventImplCopyWith(
          _$FetchTasksForDayEventImpl value,
          $Res Function(_$FetchTasksForDayEventImpl) then) =
      __$$FetchTasksForDayEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, DateTime date});
}

/// @nodoc
class __$$FetchTasksForDayEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FetchTasksForDayEventImpl>
    implements _$$FetchTasksForDayEventImplCopyWith<$Res> {
  __$$FetchTasksForDayEventImplCopyWithImpl(_$FetchTasksForDayEventImpl _value,
      $Res Function(_$FetchTasksForDayEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? date = null,
  }) {
    return _then(_$FetchTasksForDayEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchTasksForDayEventImpl implements FetchTasksForDayEvent {
  const _$FetchTasksForDayEventImpl({required this.userId, required this.date});

  @override
  final String userId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'TaskEvent.fetchTasksForDay(userId: $userId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTasksForDayEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, date);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTasksForDayEventImplCopyWith<_$FetchTasksForDayEventImpl>
      get copyWith => __$$FetchTasksForDayEventImplCopyWithImpl<
          _$FetchTasksForDayEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId, DateTime date) fetchTasksForDay,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
  }) {
    return fetchTasksForDay(userId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId, DateTime date)? fetchTasksForDay,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
  }) {
    return fetchTasksForDay?.call(userId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId, DateTime date)? fetchTasksForDay,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetchTasksForDay != null) {
      return fetchTasksForDay(userId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTasksForDayEvent value) fetchTasksForDay,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return fetchTasksForDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return fetchTasksForDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (fetchTasksForDay != null) {
      return fetchTasksForDay(this);
    }
    return orElse();
  }
}

abstract class FetchTasksForDayEvent implements TaskEvent {
  const factory FetchTasksForDayEvent(
      {required final String userId,
      required final DateTime date}) = _$FetchTasksForDayEventImpl;

  String get userId;
  DateTime get date;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTasksForDayEventImplCopyWith<_$FetchTasksForDayEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskEventImplCopyWith<$Res> {
  factory _$$AddTaskEventImplCopyWith(
          _$AddTaskEventImpl value, $Res Function(_$AddTaskEventImpl) then) =
      __$$AddTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$AddTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskEventImpl>
    implements _$$AddTaskEventImplCopyWith<$Res> {
  __$$AddTaskEventImplCopyWithImpl(
      _$AddTaskEventImpl _value, $Res Function(_$AddTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$AddTaskEventImpl implements AddTaskEvent {
  const _$AddTaskEventImpl({required this.task});

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      __$$AddTaskEventImplCopyWithImpl<_$AddTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId, DateTime date) fetchTasksForDay,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId, DateTime date)? fetchTasksForDay,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId, DateTime date)? fetchTasksForDay,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTasksForDayEvent value) fetchTasksForDay,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskEvent implements TaskEvent {
  const factory AddTaskEvent({required final TaskEntity task}) =
      _$AddTaskEventImpl;

  TaskEntity get task;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskEventImplCopyWith<_$AddTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskEventImplCopyWith<$Res> {
  factory _$$UpdateTaskEventImplCopyWith(_$UpdateTaskEventImpl value,
          $Res Function(_$UpdateTaskEventImpl) then) =
      __$$UpdateTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$UpdateTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskEventImpl>
    implements _$$UpdateTaskEventImplCopyWith<$Res> {
  __$$UpdateTaskEventImplCopyWithImpl(
      _$UpdateTaskEventImpl _value, $Res Function(_$UpdateTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$UpdateTaskEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskEventImpl implements UpdateTaskEvent {
  const _$UpdateTaskEventImpl({required this.task});

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskEvent.updateTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      __$$UpdateTaskEventImplCopyWithImpl<_$UpdateTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId, DateTime date) fetchTasksForDay,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
  }) {
    return updateTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId, DateTime date)? fetchTasksForDay,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
  }) {
    return updateTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId, DateTime date)? fetchTasksForDay,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTasksForDayEvent value) fetchTasksForDay,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskEvent implements TaskEvent {
  const factory UpdateTaskEvent({required final TaskEntity task}) =
      _$UpdateTaskEventImpl;

  TaskEntity get task;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskEventImplCopyWith<_$UpdateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskEventImplCopyWith<$Res> {
  factory _$$DeleteTaskEventImplCopyWith(_$DeleteTaskEventImpl value,
          $Res Function(_$DeleteTaskEventImpl) then) =
      __$$DeleteTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskEventImpl>
    implements _$$DeleteTaskEventImplCopyWith<$Res> {
  __$$DeleteTaskEventImplCopyWithImpl(
      _$DeleteTaskEventImpl _value, $Res Function(_$DeleteTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteTaskEventImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskEventImpl implements DeleteTaskEvent {
  const _$DeleteTaskEventImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      __$$DeleteTaskEventImplCopyWithImpl<_$DeleteTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String userId, DateTime date) fetchTasksForDay,
    required TResult Function(TaskEntity task) addTask,
    required TResult Function(TaskEntity task) updateTask,
    required TResult Function(String taskId) deleteTask,
  }) {
    return deleteTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String userId, DateTime date)? fetchTasksForDay,
    TResult? Function(TaskEntity task)? addTask,
    TResult? Function(TaskEntity task)? updateTask,
    TResult? Function(String taskId)? deleteTask,
  }) {
    return deleteTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String userId, DateTime date)? fetchTasksForDay,
    TResult Function(TaskEntity task)? addTask,
    TResult Function(TaskEntity task)? updateTask,
    TResult Function(String taskId)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchTasksForDayEvent value) fetchTasksForDay,
    required TResult Function(AddTaskEvent value) addTask,
    required TResult Function(UpdateTaskEvent value) updateTask,
    required TResult Function(DeleteTaskEvent value) deleteTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult? Function(AddTaskEvent value)? addTask,
    TResult? Function(UpdateTaskEvent value)? updateTask,
    TResult? Function(DeleteTaskEvent value)? deleteTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchTasksForDayEvent value)? fetchTasksForDay,
    TResult Function(AddTaskEvent value)? addTask,
    TResult Function(UpdateTaskEvent value)? updateTask,
    TResult Function(DeleteTaskEvent value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskEvent implements TaskEvent {
  const factory DeleteTaskEvent({required final String taskId}) =
      _$DeleteTaskEventImpl;

  String get taskId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskEventImplCopyWith<_$DeleteTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  RequestStatus get fetchTasksStatus => throw _privateConstructorUsedError;
  List<TaskEntity>? get tasks => throw _privateConstructorUsedError;
  Failures? get fetchTasksFailure => throw _privateConstructorUsedError;
  RequestStatus get addTaskStatus => throw _privateConstructorUsedError;
  Failures? get addTaskFailure => throw _privateConstructorUsedError;
  RequestStatus get updateTaskStatus => throw _privateConstructorUsedError;
  Failures? get updateTaskFailure => throw _privateConstructorUsedError;
  RequestStatus get deleteTaskStatus => throw _privateConstructorUsedError;
  Failures? get deleteTaskFailure => throw _privateConstructorUsedError;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {RequestStatus fetchTasksStatus,
      List<TaskEntity>? tasks,
      Failures? fetchTasksFailure,
      RequestStatus addTaskStatus,
      Failures? addTaskFailure,
      RequestStatus updateTaskStatus,
      Failures? updateTaskFailure,
      RequestStatus deleteTaskStatus,
      Failures? deleteTaskFailure});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTasksStatus = null,
    Object? tasks = freezed,
    Object? fetchTasksFailure = freezed,
    Object? addTaskStatus = null,
    Object? addTaskFailure = freezed,
    Object? updateTaskStatus = null,
    Object? updateTaskFailure = freezed,
    Object? deleteTaskStatus = null,
    Object? deleteTaskFailure = freezed,
  }) {
    return _then(_value.copyWith(
      fetchTasksStatus: null == fetchTasksStatus
          ? _value.fetchTasksStatus
          : fetchTasksStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
      fetchTasksFailure: freezed == fetchTasksFailure
          ? _value.fetchTasksFailure
          : fetchTasksFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addTaskFailure: freezed == addTaskFailure
          ? _value.addTaskFailure
          : addTaskFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      updateTaskStatus: null == updateTaskStatus
          ? _value.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      updateTaskFailure: freezed == updateTaskFailure
          ? _value.updateTaskFailure
          : updateTaskFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      deleteTaskStatus: null == deleteTaskStatus
          ? _value.deleteTaskStatus
          : deleteTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      deleteTaskFailure: freezed == deleteTaskFailure
          ? _value.deleteTaskFailure
          : deleteTaskFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus fetchTasksStatus,
      List<TaskEntity>? tasks,
      Failures? fetchTasksFailure,
      RequestStatus addTaskStatus,
      Failures? addTaskFailure,
      RequestStatus updateTaskStatus,
      Failures? updateTaskFailure,
      RequestStatus deleteTaskStatus,
      Failures? deleteTaskFailure});
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTasksStatus = null,
    Object? tasks = freezed,
    Object? fetchTasksFailure = freezed,
    Object? addTaskStatus = null,
    Object? addTaskFailure = freezed,
    Object? updateTaskStatus = null,
    Object? updateTaskFailure = freezed,
    Object? deleteTaskStatus = null,
    Object? deleteTaskFailure = freezed,
  }) {
    return _then(_$TaskStateImpl(
      fetchTasksStatus: null == fetchTasksStatus
          ? _value.fetchTasksStatus
          : fetchTasksStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
      fetchTasksFailure: freezed == fetchTasksFailure
          ? _value.fetchTasksFailure
          : fetchTasksFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      addTaskFailure: freezed == addTaskFailure
          ? _value.addTaskFailure
          : addTaskFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      updateTaskStatus: null == updateTaskStatus
          ? _value.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      updateTaskFailure: freezed == updateTaskFailure
          ? _value.updateTaskFailure
          : updateTaskFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
      deleteTaskStatus: null == deleteTaskStatus
          ? _value.deleteTaskStatus
          : deleteTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      deleteTaskFailure: freezed == deleteTaskFailure
          ? _value.deleteTaskFailure
          : deleteTaskFailure // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl implements _TaskState {
  const _$TaskStateImpl(
      {this.fetchTasksStatus = RequestStatus.init,
      final List<TaskEntity>? tasks,
      this.fetchTasksFailure,
      this.addTaskStatus = RequestStatus.init,
      this.addTaskFailure,
      this.updateTaskStatus = RequestStatus.init,
      this.updateTaskFailure,
      this.deleteTaskStatus = RequestStatus.init,
      this.deleteTaskFailure})
      : _tasks = tasks;

  @override
  @JsonKey()
  final RequestStatus fetchTasksStatus;
  final List<TaskEntity>? _tasks;
  @override
  List<TaskEntity>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failures? fetchTasksFailure;
  @override
  @JsonKey()
  final RequestStatus addTaskStatus;
  @override
  final Failures? addTaskFailure;
  @override
  @JsonKey()
  final RequestStatus updateTaskStatus;
  @override
  final Failures? updateTaskFailure;
  @override
  @JsonKey()
  final RequestStatus deleteTaskStatus;
  @override
  final Failures? deleteTaskFailure;

  @override
  String toString() {
    return 'TaskState(fetchTasksStatus: $fetchTasksStatus, tasks: $tasks, fetchTasksFailure: $fetchTasksFailure, addTaskStatus: $addTaskStatus, addTaskFailure: $addTaskFailure, updateTaskStatus: $updateTaskStatus, updateTaskFailure: $updateTaskFailure, deleteTaskStatus: $deleteTaskStatus, deleteTaskFailure: $deleteTaskFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            (identical(other.fetchTasksStatus, fetchTasksStatus) ||
                other.fetchTasksStatus == fetchTasksStatus) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.fetchTasksFailure, fetchTasksFailure) ||
                other.fetchTasksFailure == fetchTasksFailure) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.addTaskFailure, addTaskFailure) ||
                other.addTaskFailure == addTaskFailure) &&
            (identical(other.updateTaskStatus, updateTaskStatus) ||
                other.updateTaskStatus == updateTaskStatus) &&
            (identical(other.updateTaskFailure, updateTaskFailure) ||
                other.updateTaskFailure == updateTaskFailure) &&
            (identical(other.deleteTaskStatus, deleteTaskStatus) ||
                other.deleteTaskStatus == deleteTaskStatus) &&
            (identical(other.deleteTaskFailure, deleteTaskFailure) ||
                other.deleteTaskFailure == deleteTaskFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fetchTasksStatus,
      const DeepCollectionEquality().hash(_tasks),
      fetchTasksFailure,
      addTaskStatus,
      addTaskFailure,
      updateTaskStatus,
      updateTaskFailure,
      deleteTaskStatus,
      deleteTaskFailure);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {final RequestStatus fetchTasksStatus,
      final List<TaskEntity>? tasks,
      final Failures? fetchTasksFailure,
      final RequestStatus addTaskStatus,
      final Failures? addTaskFailure,
      final RequestStatus updateTaskStatus,
      final Failures? updateTaskFailure,
      final RequestStatus deleteTaskStatus,
      final Failures? deleteTaskFailure}) = _$TaskStateImpl;

  @override
  RequestStatus get fetchTasksStatus;
  @override
  List<TaskEntity>? get tasks;
  @override
  Failures? get fetchTasksFailure;
  @override
  RequestStatus get addTaskStatus;
  @override
  Failures? get addTaskFailure;
  @override
  RequestStatus get updateTaskStatus;
  @override
  Failures? get updateTaskFailure;
  @override
  RequestStatus get deleteTaskStatus;
  @override
  Failures? get deleteTaskFailure;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
