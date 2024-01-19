import 'package:flutter/material.dart';
import 'package:todo_list/components/sections/screen_header.dart';
import 'package:todo_list/todo_colors.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ScreenHeader(screenTitle: "New Task"),
      backgroundColor: TodoColors.gray,
      body: Text("Hello, world!"),
    );
  }
}
