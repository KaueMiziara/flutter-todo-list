import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';

class TaskCard extends StatefulWidget {
  final String taskName;

  const TaskCard({super.key, required this.taskName});

  TaskCard.fromTask(Task task, {super.key}) : taskName = task.title;

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
                  widget.taskName,
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
