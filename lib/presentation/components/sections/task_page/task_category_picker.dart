import 'package:flutter/material.dart';
import 'package:todo_list/models/task_category.dart';

class TaskCategoryPicker extends StatefulWidget {
  const TaskCategoryPicker({super.key, required this.onCategoryChanged});

  final ValueChanged<TaskCategory> onCategoryChanged;

  @override
  State<TaskCategoryPicker> createState() => _TaskCategoryPickerState();
}

class _TaskCategoryPickerState extends State<TaskCategoryPicker> {
  TaskCategory _selectedCategory = TaskCategory.task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Category",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: [
                Radio(
                  value: TaskCategory.task,
                  groupValue: _selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value as TaskCategory;
                      widget.onCategoryChanged(_selectedCategory);
                    });
                  },
                ),
                Radio(
                  value: TaskCategory.event,
                  groupValue: _selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value as TaskCategory;
                      widget.onCategoryChanged(_selectedCategory);
                    });
                  },
                ),
                Radio(
                  value: TaskCategory.achievement,
                  groupValue: _selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value as TaskCategory;
                      widget.onCategoryChanged(_selectedCategory);
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
