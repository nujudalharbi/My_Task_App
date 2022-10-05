import 'package:flutter/material.dart';
import 'package:tasks_app/task.dart';
import 'package:tasks_app/tasks_list.dart';


class TaskList extends StatefulWidget{

  final List<Task> tasks;
  TaskList(this.tasks );
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {



  @override
  Widget build(BuildContext context){
    return ListView.builder( itemCount:  widget.tasks.length  , itemBuilder: (context , index){


      return TaskTitle(isChecked:  widget.tasks[index].isDone, taskTitle:  widget.tasks[index].name ,
      checkboxChange:
          ( newValue){
                setState(() {
                widget.tasks[index].doneChange() ;
               });
                },


    ) ;
    });
    // return ListView(
    //   children: [
    //    TaskTitle(taskTitle:tasks[0].name ,isChecked: tasks[0].isDone,),
    //     TaskTitle(taskTitle:tasks[1].name ,isChecked: tasks[1].isDone,),
    //     TaskTitle(taskTitle:tasks[2].name ,isChecked: tasks[2].isDone,),
    //
    //   ],
    // );
  }
}