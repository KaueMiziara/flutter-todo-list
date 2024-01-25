import 'package:todo_list/models/task.dart';
import 'package:todo_list/presentation/components/elements/task_card.dart';

class TasksViewModel {
  final List<Task> _tasks = [];

  TasksViewModel() {
    _populateList();
  }

  void _populateList() {
    _tasks.add(Task("1", "category", DateTime(1), "description"));
    _tasks.add(Task("2", "category", DateTime(2), "description"));
    _tasks.add(Task("3", "category", DateTime(3), "description"));
    _tasks.add(Task("4", "category", DateTime(4), "description"));
    _tasks.add(Task("5", "category", DateTime(5), "description"));
  }

  List<TaskCard> getCards() {
    List<TaskCard> cardsList = [];

    for (var task in _tasks) {
      cardsList.add(TaskCard(taskName: task.name));
    }

    return cardsList;
  }
}
