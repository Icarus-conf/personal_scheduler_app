import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/features/task/data/datasource/remote/task_remote_data_source.dart';
import 'package:personal_scheduler_app/features/task/data/models/task_model.dart';

@Injectable(as: TaskRemoteDataSource)
class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  final FirebaseFirestore firestore;

  TaskRemoteDataSourceImpl(this.firestore);

  @override
  Future<void> createTask(TaskModel task) async {
    final taskDocRef =
        await FirebaseFirestore.instance.collection('tasks').add(task.toJson());

    task.copyWith(id: taskDocRef.id);
  }

  @override
  Future<List<TaskModel>> readTasks(String userId, DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay =
        startOfDay.add(const Duration(hours: 23, minutes: 59, seconds: 59));

    final snapshot = await firestore
        .collection('tasks')
        .where('userId', isEqualTo: userId)
        .where('startDate', isGreaterThanOrEqualTo: startOfDay)
        .where('startDate', isLessThanOrEqualTo: endOfDay)
        .orderBy('startDate')
        .get();

    return snapshot.docs
        .map((doc) => TaskModel.fromFirestore(doc.data(), doc.id))
        .toList();
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    await firestore.collection('tasks').doc(task.id).update(task.toJson());
  }

  @override
  Future<void> deleteTask(String taskId) async {
    await firestore.collection('tasks').doc(taskId).delete();
  }
}
