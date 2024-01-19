import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.taskName});

  final String taskName;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
