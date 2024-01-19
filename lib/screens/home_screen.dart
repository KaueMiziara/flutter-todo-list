import 'package:flutter/material.dart';
import 'package:todo_list/components/sections/header.dart';
import 'package:todo_list/components/sections/task_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 245, 249, 1.0),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const Header(),
          const Padding(
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
          Padding(
            padding: const EdgeInsets.only(bottom: 56),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(358, 56),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  onPressed: () {},
                  child: const Text("New Task"),
                )),
          )
        ],
      ),
    );
  }
}
