import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/elements/task_date_picker.dart';
import 'package:todo_list/presentation/components/elements/task_time_picker.dart';

class TaskDateAndTimePickers extends StatelessWidget {
  const TaskDateAndTimePickers({
    super.key,
    required this.dateController,
    required this.timeController,
  });

  final TextEditingController dateController;
  final TextEditingController timeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TaskDatePicker(dateController: dateController),
          ),
          Expanded(
            child: TaskTimePicker(timeController: timeController),
          ),
        ],
      ),
    );
  }
}
