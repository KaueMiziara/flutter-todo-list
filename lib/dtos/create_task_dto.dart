import 'package:todo_list/models/task.dart';

class CreateTaskDto {
  final String title;
  final String description;
  final String date;
  final String category;

  CreateTaskDto(Task task)
      : title = task.title,
        description = task.description,
        date = task.date,
        category = task.category.name;
}
