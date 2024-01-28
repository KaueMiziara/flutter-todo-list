import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/elements/task_date_picker.dart';
import 'package:todo_list/presentation/components/elements/task_time_picker.dart';

class TaskDateAndTimePickers extends StatefulWidget {
  const TaskDateAndTimePickers({super.key});

  @override
  State<TaskDateAndTimePickers> createState() => _TaskDateAndTimePickersState();
}

class _TaskDateAndTimePickersState extends State<TaskDateAndTimePickers> {
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
