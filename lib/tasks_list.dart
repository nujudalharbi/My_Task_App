import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget{

 final bool isChecked ;
 final String taskTitle;
 final void Function(bool?) checkboxChange ;
TaskTitle({required this.isChecked , required this.taskTitle ,required this.checkboxChange});
  @override
  Widget build(BuildContext context) {
    return

      ListTile(
        title: Text(taskTitle , style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),),
        trailing:Checkbox(
    activeColor: Colors.red,
    value: isChecked,
    onChanged: checkboxChange,

    // onChanged: checkboxChange,
// setState(() {
//   isChecked = newValue ;
// } ,

        ),

      );
  }
  }

// (bool? newValue){
// setState(() {
// isChecked = newValue! ;
// });
// }

