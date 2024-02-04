import 'package:flutter/material.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class TaskDatePicker extends StatefulWidget {
  const TaskDatePicker({super.key, required this.dateController});

  final TextEditingController dateController;

  @override
  State<TaskDatePicker> createState() => _TaskDatePickerState();
}

class _TaskDatePickerState extends State<TaskDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Date",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: widget.dateController,
            decoration: const InputDecoration(
              labelText: "Date",
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.calendar_today_outlined),
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
              _selectDate();
            },
          ),
        ],
      ),
    );
  }

  void _selectDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );

    if (selectedDate != null) {
      setState(() {
        widget.dateController.text = selectedDate.toString().split(" ")[0];
      });
    }
  }
}
