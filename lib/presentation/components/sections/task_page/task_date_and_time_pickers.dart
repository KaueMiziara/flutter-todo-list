import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/elements/task_date_picker.dart';
import 'package:todo_list/presentation/components/elements/task_time_picker.dart';

class TaskDateAndTimePickers extends StatelessWidget {
  const TaskDateAndTimePickers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TaskDatePicker(),
          ),
          Expanded(
            child: TaskTimePicker(),
          ),
        ],
      ),
    );
  }
}
