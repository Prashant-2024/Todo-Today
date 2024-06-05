import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_today/Modals/task_data.dart';
import 'package:todo_today/Screens/tasks_screen.dart';

void main() {
  runApp(TodoToday());
}

class TodoToday extends StatelessWidget {
  TodoToday({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
