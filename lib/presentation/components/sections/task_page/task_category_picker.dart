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
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: [
                _categoryIcon(
                  TaskCategory.task,
                  icon: Icons.task,
                ),
                _categoryIcon(
                  TaskCategory.event,
                  icon: Icons.event,
                ),
                _categoryIcon(
                  TaskCategory.achievement,
                  icon: Icons.emoji_events,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryIcon(TaskCategory category, {required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkResponse(
        child: Icon(
          icon,
          color: _selectedCategory == category ? Colors.blue : null,
        ),
        onTap: () => setState(() {
          _selectedCategory = category;
          widget.onCategoryChanged(_selectedCategory);
        }),
      ),
    );
  }
}
