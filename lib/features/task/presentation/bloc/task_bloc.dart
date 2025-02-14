import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';
import 'package:personal_scheduler_app/features/task/domain/use_cases/create_task_use_case.dart';
import 'package:personal_scheduler_app/features/task/domain/use_cases/delete_task_use_case.dart';
import 'package:personal_scheduler_app/features/task/domain/use_cases/read_tasks_use_case.dart';
import 'package:personal_scheduler_app/features/task/domain/use_cases/update_task_use_case.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final CreateTaskUseCase createTaskUseCase;
  final UpdateTaskUseCase updateTaskUseCase;
  final DeleteTaskUseCase deleteTaskUseCase;
  final ReadTasksUseCase readTasksUseCase;
  TaskBloc(
      {required this.createTaskUseCase,
      required this.updateTaskUseCase,
      required this.deleteTaskUseCase,
      required this.readTasksUseCase})
      : super(TaskState()) {
    on<AddTaskEvent>((event, emit) async {
      emit(state.copyWith(
        addTaskStatus: RequestStatus.loading,
      ));
      var result = await createTaskUseCase(event.task);
      result.fold(
        (failure) {
          emit(state.copyWith(
              addTaskStatus: RequestStatus.failure, addTaskFailure: failure));
        },
        (success) {
          emit(state.copyWith(
            addTaskStatus: RequestStatus.success,
          ));
        },
      );
    });

    on<UpdateTaskEvent>((event, emit) async {
      emit(state.copyWith(
        updateTaskStatus: RequestStatus.loading,
      ));
      var result = await updateTaskUseCase(event.task);
      result.fold(
        (failure) {
          emit(state.copyWith(
              updateTaskStatus: RequestStatus.failure,
              updateTaskFailure: failure));
        },
        (success) {
          emit(state.copyWith(
            updateTaskStatus: RequestStatus.success,
          ));
        },
      );
    });

    on<DeleteTaskEvent>((event, emit) async {
      emit(state.copyWith(
        deleteTaskStatus: RequestStatus.loading,
      ));
      var result = await deleteTaskUseCase(event.taskId);
      result.fold(
        (failure) {
          emit(state.copyWith(
              deleteTaskStatus: RequestStatus.failure,
              deleteTaskFailure: failure));
        },
        (success) {
          emit(state.copyWith(
            deleteTaskStatus: RequestStatus.success,
          ));
        },
      );
    });

    on<FetchTasksForDayEvent>((event, emit) async {
      emit(state.copyWith(
        fetchTasksStatus: RequestStatus.loading,
        addTaskStatus: RequestStatus.init,
        deleteTaskStatus: RequestStatus.init,
        updateTaskStatus: RequestStatus.init,
      ));
      var result = await readTasksUseCase(event.userId, event.date);
      result.fold(
        (failure) {
          emit(state.copyWith(
              fetchTasksStatus: RequestStatus.failure,
              fetchTasksFailure: failure));
        },
        (tasks) {
          emit(state.copyWith(
            fetchTasksStatus: RequestStatus.success,
            tasks: tasks,
          ));
        },
      );
    });
  }
}
