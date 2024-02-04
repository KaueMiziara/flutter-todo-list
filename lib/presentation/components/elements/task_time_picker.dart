import 'package:flutter/material.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class TaskTimePicker extends StatefulWidget {
  const TaskTimePicker({super.key, required this.timeController});

  final TextEditingController timeController;

  @override
  State<TaskTimePicker> createState() => _TaskTimePickerState();
}

class _TaskTimePickerState extends State<TaskTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Time",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: widget.timeController,
          decoration: const InputDecoration(
            labelText: "Time",
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Icon(Icons.schedule),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: TodoColors.blue),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
          readOnly: true,
          onTap: () {
            _selectTime();
          },
        ),
      ],
    );
  }

  void _selectTime() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() {
        widget.timeController.text = selectedTime.format(context).toString();
      });
    }
  }
}
