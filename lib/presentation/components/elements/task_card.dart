import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_category.dart';

class TaskCard extends StatefulWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(switch (widget.task.category) {
                TaskCategory.task => Icons.task,
                TaskCategory.event => Icons.event,
                TaskCategory.achievement => Icons.emoji_events,
              }),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.task.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(widget.task.date),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Checkbox(
                    value: _isChecked,
                    onChanged: (stateBool) {
                      setState(() {
                        _isChecked = stateBool;
                      });
                    }),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
