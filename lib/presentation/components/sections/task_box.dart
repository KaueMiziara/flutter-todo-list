import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/presentation/components/elements/task_card.dart';
import 'package:todo_list/presentation/view_models/tasks_view_model.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key});

  @override
  Widget build(BuildContext context) {
    TasksViewModel viewModel = Provider.of<TasksViewModel>(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 16, 28, 16),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(250, 250, 250, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          itemCount: viewModel.tasks.length,
          itemBuilder: (context, index) {
            return TaskCard(task: viewModel.tasks[index]);
          },
        ),
      ),
    );
  }
}
