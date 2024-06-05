import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_today/Modals/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(taskText: "Buy Milk"),
    Task(taskText: "Buy Bread"),
    Task(taskText: "Buy Butter"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(taskText: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}
