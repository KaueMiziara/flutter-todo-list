import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';

class TaskCard extends StatefulWidget {
  final String taskTitle;

  const TaskCard({super.key, required this.taskTitle});

  TaskCard.fromTask(Task task, {super.key}) : taskTitle = task.title;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.circle, color: Colors.amber),
            Column(
              children: [
                Text(
                  widget.taskTitle,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("Day - Time"),
              ],
            ),
            Checkbox(
                value: _isChecked,
                onChanged: (stateBool) {
                  setState(() {
                    _isChecked = stateBool;
                  });
                }),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
