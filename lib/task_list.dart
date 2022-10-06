import 'package:flutter/material.dart';
import 'package:tasks_app/task.dart';
import 'package:tasks_app/task_data.dart';
import 'package:tasks_app/tasks_list.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskDate, child) {
        return ListView.builder(
            itemCount: Provider.of<TaskData>(context).tasks.length,
            itemBuilder: (context, index) {
              return TaskTitle(
                isChecked: taskDate.tasks[index].isDone,
                taskTitle: taskDate.tasks[index].name,
                checkboxChange: (newValue) {
                taskDate.updateTask(taskDate.tasks[index]);


                },
                listTitleDelete: (){
                  taskDate.deleteTask(taskDate.tasks[index]);

                },
              );
            });
      },
    );
  }
}
