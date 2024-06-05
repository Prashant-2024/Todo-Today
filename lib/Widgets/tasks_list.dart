import 'package:flutter/cupertino.dart';
import '../Modals/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({required this.tasks});

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: widget.tasks[index].taskText,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].isDone = checkboxState!;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
