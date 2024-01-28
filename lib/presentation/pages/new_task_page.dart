import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_category_picker.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_date_and_time_pickers.dart';
import 'package:todo_list/presentation/components/sections/task_page/task_text_input.dart';
import 'package:todo_list/presentation/components/sections/page_header.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageHeader(screenTitle: "New Task"),
      backgroundColor: TodoColors.gray,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Name
            TaskTextInput(
              title: 'Name',
              labelText: 'Task Name',
            ),

            // Category
            TaskCategoryPicker(),

            // Date and Time
            TaskDateAndTimePickers(),

            // Description
            TaskTextInput(
              title: 'Description',
              labelText: 'Description',
            ),
          ],
        ),
      ),
    );
  }
}
