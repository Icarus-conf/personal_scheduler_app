part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;
  const factory TaskEvent.fetchTasksForDay({
    required String userId,
    required DateTime date,
  }) = FetchTasksForDayEvent;

  const factory TaskEvent.addTask({
    required TaskEntity task,
  }) = AddTaskEvent;

  const factory TaskEvent.updateTask({
    required TaskEntity task,
  }) = UpdateTaskEvent;

  const factory TaskEvent.deleteTask({
    required String taskId,
  }) = DeleteTaskEvent;
}
