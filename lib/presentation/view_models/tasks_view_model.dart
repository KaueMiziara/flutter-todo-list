import 'package:flutter/cupertino.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/presentation/components/elements/task_card.dart';

class TasksViewModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  TasksViewModel() {
    _populateList();
  }

  void _populateList() {
    _tasks.add(Task(
      id: "id1",
      title: "title1",
      date: DateTime(1),
      category: "category",
      description: "description",
      completed: false,
    ));
  }

  List<TaskCard> getCards() {
    List<TaskCard> cardsList = [];

    for (var task in _tasks) {
      cardsList.add(TaskCard(task: task));
    }

    return cardsList;
  }
}
