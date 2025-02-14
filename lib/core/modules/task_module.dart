import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/features/task/data/models/task_model.dart';

@module
abstract class HiveModule {
  @lazySingleton
  Box<TaskModel> get taskBox => Hive.box<TaskModel>('tasksBox');
}
