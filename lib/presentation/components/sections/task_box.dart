import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/elements/task_card.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 16, 28, 16),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(250, 250, 250, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: const SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TaskCard(taskName: "Item 1"),
              TaskCard(taskName: "Item 2"),
              TaskCard(taskName: "Item 3"),
              TaskCard(taskName: "Item 4"),
              TaskCard(taskName: "Item 5"),
              TaskCard(taskName: "Item 6"),
            ],
          ),
        ),
      ),
    );
  }
}
