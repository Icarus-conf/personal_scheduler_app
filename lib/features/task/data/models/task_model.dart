import 'package:hive/hive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/task_entity.dart';

part 'task_model.g.dart'; // ✅ Required for code generation

@HiveType(typeId: 0)
class TaskModel extends TaskEntity {
  @override
  @HiveField(0)
  final String id;

  @override
  @HiveField(1)
  final String name;

  @override
  @HiveField(2)
  final DateTime startDate;

  @override
  @HiveField(3)
  final DateTime endDate;

  @override
  @HiveField(4)
  final String priority;

  @override
  @HiveField(5)
  final String category;

  @override
  @HiveField(6)
  final String userId;

  const TaskModel({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.priority,
    required this.category,
    required this.userId,
  }) : super(
          id: id,
          name: name,
          startDate: startDate,
          endDate: endDate,
          priority: priority,
          category: category,
          userId: userId,
        );

  /// Convert Firestore document to `TaskModel`
  factory TaskModel.fromFirestore(
      Map<String, dynamic> json, String documentId) {
    return TaskModel(
      id: documentId,
      name: json['name'],
      startDate: (json['startDate'] as Timestamp).toDate(),
      endDate: (json['endDate'] as Timestamp).toDate(),
      priority: json['priority'],
      category: json['category'],
      userId: json['userId'],
    );
  }

  /// Convert `TaskModel` to Firestore document
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'startDate': Timestamp.fromDate(startDate),
      'endDate': Timestamp.fromDate(endDate),
      'priority': priority,
      'category': category,
      'userId': userId,
    };
  }

  /// Convert `TaskEntity` to `TaskModel`
  factory TaskModel.fromEntity(TaskEntity entity) {
    return TaskModel(
      id: entity.id,
      name: entity.name,
      startDate: entity.startDate,
      endDate: entity.endDate,
      priority: entity.priority,
      category: entity.category,
      userId: entity.userId,
    );
  }

  TaskModel copyWith({
    String? id,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    String? priority,
    String? category,
    String? userId,
  }) {
    return TaskModel(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      priority: priority ?? this.priority,
      category: category ?? this.category,
      userId: userId ?? this.userId,
    );
  }
}
