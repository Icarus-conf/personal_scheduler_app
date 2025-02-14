import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/task/domain/repository/task_repo.dart';

@injectable
class DeleteTaskUseCase {
  final TaskRepository repository;
  DeleteTaskUseCase(this.repository);

  Future<Either<Failures, void>> call(String taskId) {
    return repository.deleteTask(taskId);
  }
}
