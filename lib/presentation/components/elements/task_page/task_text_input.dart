import 'package:flutter/material.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class TaskTextInput extends StatelessWidget {
  const TaskTextInput(
      {super.key, required this.title, required this.labelText});

  final String title;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: labelText,
              filled: true,
              fillColor: Colors.white,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: TodoColors.blue)),
            ),
          ),
        ],
      ),
    );
  }
}
