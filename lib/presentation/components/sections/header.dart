import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/presentation/themes/todo_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234,
      color: TodoColors.blue,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 42, 16, 54),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                DateFormat('MMMM dd, yyyy').format(DateTime.now()).toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const Text(
                'Todo List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
