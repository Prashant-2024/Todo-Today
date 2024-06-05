import 'package:flutter/cupertino.dart';
import '../Modals/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskText: "Buy Milk"),
    Task(taskText: "Buy Bread"),
    Task(taskText: "Buy Butter"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: tasks[index].taskText,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].isDone = checkboxState!;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
