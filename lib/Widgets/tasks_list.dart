import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_today/Modals/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: taskData.tasks[index].taskText,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                // Provider.of<TaskData>(context).tasks[index].isDone = checkboxState!;
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
