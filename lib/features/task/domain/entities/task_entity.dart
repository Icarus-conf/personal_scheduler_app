class TaskEntity {
  final String id;
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final String priority;
  final String category;
  final String userId;

  const TaskEntity({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.priority,
    required this.category,
    required this.userId,
  });
}
