import 'package:flutter/material.dart';
import 'package:todo_list/components/elements/task_card.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 16, 28, 16),
      child: Container(
        height: 200,
        color: Colors.black12,
        child: const SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TaskCard(taskName: "Item 1"),
              Divider(),
              TaskCard(taskName: "Item 2"),
              Divider(),
              TaskCard(taskName: "Item 3"),
              Divider(),
              TaskCard(taskName: "Item 4"),
              Divider(),
              TaskCard(taskName: "Item 5"),
              Divider(),
              TaskCard(taskName: "Item 6"),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
