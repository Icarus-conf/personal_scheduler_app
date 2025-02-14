import 'package:personal_scheduler_app/features/task/data/models/task_model.dart';

abstract class TaskRemoteDataSource {
  Future<void> createTask(TaskModel task);
  Future<List<TaskModel>> readTasks(String userId, DateTime date);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(String taskId);
}
