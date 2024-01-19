import 'package:flutter/material.dart';
import 'package:todo_list/components/sections/header.dart';
import 'package:todo_list/components/sections/task_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(241, 245, 249, 1.0),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 158, 0, 16),
            child: Column(
              children: [
                TaskBox(),
                Text(
                  "Completed",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TaskBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
