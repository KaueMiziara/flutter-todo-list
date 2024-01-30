import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_category_picker.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_date_and_time_pickers.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_text_input.dart';
import 'package:todo_list/presentation/components/sections/page_header.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class NewTaskPage extends StatelessWidget {
  NewTaskPage({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageHeader(screenTitle: "New Task"),
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
            const TaskCategoryPicker(),

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

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: TodoColors.blue,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(358, 56),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              child: const Text("Save"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
