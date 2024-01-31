import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/presentation/pages/home_page.dart';
import 'package:todo_list/presentation/view_models/tasks_view_model.dart';

Future main() async {
  await dotenv.load();

  runApp(ChangeNotifierProvider(
    create: (context) => TasksViewModel(),
    child: const TodoListApp(),
  ));
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo List",
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
