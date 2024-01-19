import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 32, 28, 8),
      child: Container(
        height: 200,
        color: Colors.black12,
        child: const SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Item 1"),
              Divider(),
              Text("Item 2"),
              Divider(),
              Text("Item 3"),
              Divider(),
              Text("Item 4"),
              Divider(),
              Text("Item 5"),
              Divider(),
              Text("Item 6"),
              Divider(),
              Text("Item 7"),
            ],
          ),
        ),
      ),
    );
  }
}
