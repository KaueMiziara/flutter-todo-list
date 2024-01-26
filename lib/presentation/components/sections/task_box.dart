import 'package:flutter/material.dart';
import 'package:todo_list/presentation/view_models/tasks_view_model.dart';

class TaskBox extends StatelessWidget {
  TaskBox({super.key});

  final TasksViewModel _viewModel = TasksViewModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 16, 28, 16),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(250, 250, 250, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _viewModel.getCards(),
          ),
        ),
      ),
    );
  }
}
