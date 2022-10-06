import 'package:flutter/material.dart';
import 'package:tasks_app/task.dart';
import 'package:tasks_app/tasks_list.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTitle(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxChange: (newValue) {
              setState(() {
                widget.tasks[index].doneChange();
              });
            },
          );
        });
  }
}
