import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_category.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_category_picker.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_date_and_time_pickers.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_text_input.dart';
import 'package:todo_list/presentation/components/sections/page_header.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';
import 'package:todo_list/presentation/view_models/tasks_view_model.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  TaskCategory _selectedCategory = TaskCategory.task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageHeader(screenTitle: 'New Task'),
      backgroundColor: TodoColors.gray,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Name
            TaskTextInput(
              title: 'Name',
              labelText: 'Task Name',
              controller: titleController,
            ),

            // Category
            TaskCategoryPicker(
              onCategoryChanged: (category) {
                setState(() {
                  _selectedCategory = category;
                });
              },
            ),

            // Date and Time
            TaskDateAndTimePickers(
              dateController: dateController,
              timeController: timeController,
            ),

            // Description
            TaskTextInput(
              title: 'Description',
              labelText: 'Description',
              controller: descriptionController,
            ),

            // Save Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: TodoColors.blue,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(358, 56),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              child: const Text('Save'),
              onPressed: () {
                TasksViewModel viewModel = Provider.of<TasksViewModel>(
                  context,
                  listen: false,
                );

                viewModel.addTask(
                  title: titleController.text,
                  date: '${dateController.text} ${timeController.text}',
                  category: _selectedCategory,
                  description: descriptionController.text,
                );

                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
