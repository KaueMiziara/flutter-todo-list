import 'package:todo_list/models/task_category.dart';

class Task {
  final String id;
  final String title;
  final String date;
  final TaskCategory category;
  final String description;
  final bool completed;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.category,
    required this.description,
    required this.completed,
  });
}
