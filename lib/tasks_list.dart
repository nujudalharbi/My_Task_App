import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTitleDelete;



  TaskTitle({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxChange,
    required this.listTitleDelete,
    // required this.listTitleDelete
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Colors.white,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.red,
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress: listTitleDelete,
    );
  }
}
