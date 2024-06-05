import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_today/Modals/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(taskText: "Buy Milk"),
    Task(taskText: "Buy Bread"),
    Task(taskText: "Buy Butter"),
  ];

  int get taskCount {
    return tasks.length;
  }
}
