import 'package:dartz/dartz.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';

abstract class TaskRepository {
  Future<Either<Failures, List<TaskEntity>>> getTasksForDay(
      String userId, DateTime date);
  Future<Either<Failures, void>> addTask(TaskEntity task);
  Future<Either<Failures, void>> updateTask(TaskEntity task);
  Future<Either<Failures, void>> deleteTask(String taskId);
}
