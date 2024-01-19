import 'package:flutter/material.dart';
import 'package:todo_list/components/sections/screen_header.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ScreenHeader(screenTitle: "New Task"),
      body: Text("Hello, world!"),
    );
  }
}
