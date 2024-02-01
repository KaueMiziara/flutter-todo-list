import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_category.dart';

class CreateTaskDto {
  late String title;
  late String description;
  late String date;
  late String category;

  CreateTaskDto(Task task) {
    title = task.title;
    description = task.description;
    date = task.date;
    category = switch (task.category) {
      TaskCategory.task => "TASK",
      TaskCategory.event => "EVENT",
      TaskCategory.achievement => "ACHIEVEMENT",
    };
  }
}
