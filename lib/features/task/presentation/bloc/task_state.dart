part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default(RequestStatus.init) RequestStatus fetchTasksStatus,
    List<TaskEntity>? tasks,
    Failures? fetchTasksFailure,
    @Default(RequestStatus.init) RequestStatus addTaskStatus,
    Failures? addTaskFailure,
    @Default(RequestStatus.init) RequestStatus updateTaskStatus,
    Failures? updateTaskFailure,
    @Default(RequestStatus.init) RequestStatus deleteTaskStatus,
    Failures? deleteTaskFailure,
  }) = _TaskState;
}
