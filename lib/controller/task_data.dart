import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tasks_app/controller/task.dart';

class TaskData extends GetxController {
  List<Task> tasks = [
    Task(name: "complete project "),
    Task(name: "read two page  "),
    Task(name: "go to mall "),
  ].obs;

  late final String name;
  late bool isDone;
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));


  }

  void updateTask(Task task) {
    task.doneChange();

  }

  void deleteTask(Task task) {
    tasks.remove(task);

  }





  void doneChange() {
    isDone = !isDone;
  }
}
