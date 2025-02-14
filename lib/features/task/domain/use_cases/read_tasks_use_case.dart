import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';
import 'package:personal_scheduler_app/features/task/domain/repository/task_repo.dart';

@injectable
class ReadTasksUseCase {
  final TaskRepository repository;
  ReadTasksUseCase(this.repository);

  Future<Either<Failures, List<TaskEntity>>> call(
      String userId, DateTime date) {
    return repository.getTasksForDay(userId, date);
  }
}
