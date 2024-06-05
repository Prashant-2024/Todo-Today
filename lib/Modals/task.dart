class Task {
  Task({required this.taskText, this.isDone = false});

  late final String taskText;
  late bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
