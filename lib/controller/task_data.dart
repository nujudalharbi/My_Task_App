import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tasks_app/controller/task.dart';

class TaskData extends GetxController {
 var tasks = [
   "complete project ",
    "read two page  ",
    "go to mall ",

  ].obs;

  late final String name;
  late bool isDone;
  void addTask(String newTaskTitle) {
    tasks.add( newTaskTitle);


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
