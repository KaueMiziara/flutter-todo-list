import 'package:flutter/material.dart';

class TaskCategoryPicker extends StatefulWidget {
  const TaskCategoryPicker({super.key});

  @override
  State<TaskCategoryPicker> createState() => _TaskCategoryPickerState();
}

class _TaskCategoryPickerState extends State<TaskCategoryPicker> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Icon(Icons.circle, color: Colors.red),
                  Icon(Icons.circle, color: Colors.green),
                  Icon(Icons.circle, color: Colors.blue),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
