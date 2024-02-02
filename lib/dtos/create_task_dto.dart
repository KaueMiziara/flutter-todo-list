import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_category.dart';

class CreateTaskDto {
  final String title;
  final String description;
  final String date;
  final String category;

  CreateTaskDto(Task task)
      : title = task.title,
        description = task.description,
        date = task.date,
        category = switch (task.category) {
          TaskCategory.task => "TASK",
          TaskCategory.event => "EVENT",
          TaskCategory.achievement => "ACHIEVEMENT",
        };
}
