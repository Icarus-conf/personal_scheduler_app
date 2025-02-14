import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/features/task/data/datasource/local/task_local_data_source.dart';
import '../../models/task_model.dart';

@Injectable(as: TaskLocalDataSource)
class TaskLocalDataSourceImpl implements TaskLocalDataSource {
  final Box<TaskModel> taskBox;

  TaskLocalDataSourceImpl(this.taskBox);

  @override
  Future<List<TaskModel>> getTasksForDay(String userId, DateTime date) async {
    return taskBox.values
        .where((task) =>
            task.userId == userId &&
            task.startDate.year == date.year &&
            task.startDate.month == date.month &&
            task.startDate.day == date.day)
        .toList()
      ..sort((a, b) => a.startDate.compareTo(b.startDate));
  }

  @override
  Future<void> insertTask(TaskModel task) async {
    await taskBox.put(task.id, task);
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    await taskBox.put(task.id, task);
  }

  @override
  Future<void> deleteTask(String taskId) async {
    await taskBox.delete(taskId);
  }
}
