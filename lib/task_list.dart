import 'package:flutter/material.dart';
import 'package:tasks_app/tasks_list.dart';

class TaskList extends StatelessWidget{
  const TaskList({
   Key? key ,
}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
       TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}