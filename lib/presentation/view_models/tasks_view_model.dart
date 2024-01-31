import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_category.dart';

class TasksViewModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask({
    required String title,
    required String date,
    required TaskCategory category,
    required String description,
  }) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDateTime = DateFormat('MMM dd/yy - hh:mm').format(dateTime);

    Task task = Task(
      id: 'id$date',
      title: title,
      date: formattedDateTime,
      category: category,
      description: description,
      completed: false,
    );

    _tasks.add(task);
    notifyListeners();
  }
}
