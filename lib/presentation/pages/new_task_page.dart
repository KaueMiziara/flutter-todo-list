import 'package:flutter/material.dart';
import 'package:todo_list/presentation/components/elements/task_page/task_category_picker.dart';
import 'package:todo_list/presentation/components/elements/task_page/task_text_input.dart';
import 'package:todo_list/presentation/components/sections/page_header.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageHeader(screenTitle: "New Task"),
      backgroundColor: TodoColors.gray,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Name
            const TaskTextInput(
              title: 'Name',
              labelText: 'Task Name',
            ),

            // Category
            const TaskCategoryPicker(),

            // Date and Time
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Date",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          TextField(
                            controller: _dateController,
                            decoration: const InputDecoration(
                              labelText: "Date",
                              filled: true,
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.calendar_today_outlined),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: TodoColors.blue)),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDate();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Time",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          controller: _timeController,
                          decoration: const InputDecoration(
                            labelText: "Time",
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.schedule),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: TodoColors.blue)),
                          ),
                          readOnly: true,
                          onTap: () {
                            _selectTime();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Description
            const TaskTextInput(
              title: 'Description',
              labelText: 'Description',
            ),
          ],
        ),
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
        _dateController.text = selectedDate.toString().split(" ")[0];
      });
    }
  }

  void _selectTime() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      setState(() {
        _timeController.text = selectedTime.format(context).toString();
      });
    }
  }
}
