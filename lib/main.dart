import 'package:flutter/material.dart';
import 'package:todo_today/Screens/tasks_screen.dart';

void main() {
  runApp(const TodoToday());
}

class TodoToday extends StatelessWidget {
  const TodoToday({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
