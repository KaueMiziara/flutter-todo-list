import 'package:flutter/material.dart';
import 'package:todo_list/components/sections/page_header.dart';
import 'package:todo_list/themes/todo_colors.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PageHeader(screenTitle: "New Task"),
      backgroundColor: TodoColors.gray,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Task Name'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Icon(Icons.circle, color: Colors.red),
                        Icon(Icons.circle, color: Colors.green),
                        Icon(Icons.circle, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text("Date placeholder")
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Time",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text("Time placeholder")
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Description'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
