import 'package:flutter/widgets.dart';
import 'package:tasks_app/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "complete project "),
    Task(name: "read two page  "),
    Task(name: "go to mall "),
  ];
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));

    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
