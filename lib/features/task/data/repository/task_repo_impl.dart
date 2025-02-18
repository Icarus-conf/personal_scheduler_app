import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/task/data/datasource/local/task_local_data_source.dart';
import 'package:personal_scheduler_app/features/task/data/datasource/remote/task_remote_data_source.dart';
import 'package:personal_scheduler_app/features/task/data/models/task_model.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';
import 'package:personal_scheduler_app/features/task/domain/repository/task_repo.dart';

@Injectable(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteDataSource remoteDataSource;
  final TaskLocalDataSource localDataSource;
  final Connectivity connectivity;

  TaskRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectivity,
  });

  @override
  Future<Either<Failures, List<TaskEntity>>> getTasksForDay(
      String userId, DateTime date) async {
    try {
      final isConnected = await _isConnected();

      if (isConnected) {
        log("🔄 Syncing tasks from Firestore...");

        final remoteTasks = await remoteDataSource.readTasks(userId, date);
        final localTasks = await localDataSource.getTasksForDay(userId, date);

        // ✅ Only insert new tasks, preventing duplicates
        for (var task in remoteTasks) {
          if (!localTasks.any((localTask) => localTask.id == task.id)) {
            await localDataSource.insertTask(task.copyWith(userId: userId));
          }
        }

        log("✅ Synced tasks successfully!");
        return Right(remoteTasks);
      } else {
        final localTasks = await localDataSource.getTasksForDay(userId, date);
        log("📂 Loaded tasks from Hive (offline mode)");
        return Right(localTasks);
      }
    } catch (e) {
      log("❌ Error syncing tasks: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> addTask(TaskEntity task) async {
    try {
      final isConnected = await _isConnected();
      final taskModel =
          TaskModel.fromEntity(task).copyWith(userId: task.userId);

      if (isConnected) {
        await remoteDataSource.createTask(taskModel);
      }

      // 🔥 Prevent inserting duplicate tasks in Hive
      final existingTasks =
          await localDataSource.getTasksForDay(task.userId, task.startDate);
      final isDuplicate = existingTasks.any((t) => t.id == task.id);

      if (!isDuplicate) {
        await localDataSource.insertTask(taskModel);
      }

      return const Right(null);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> updateTask(TaskEntity task) async {
    try {
      final isConnected = await _isConnected();
      final taskModel = TaskModel.fromEntity(task);

      if (isConnected) {
        await remoteDataSource.updateTask(taskModel);
      }
      await localDataSource.updateTask(taskModel);

      return const Right(null);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> deleteTask(String taskId) async {
    try {
      final isConnected = await _isConnected();

      if (isConnected) {
        await remoteDataSource.deleteTask(taskId);
      }
      await localDataSource.deleteTask(taskId);

      return const Right(null);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  Future<bool> _isConnected() async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    return connectivityResult.isNotEmpty &&
        !connectivityResult.contains(ConnectivityResult.none);
  }
}
