import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget{
  const TaskTitle({
    Key? key ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return

        ListTile(
          title: Text("read two page"),
          trailing: TaskCheckbox(),
        );


  }
}


class TaskCheckbox extends StatefulWidget {

  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}
class _TaskCheckboxState extends State<TaskCheckbox>{
  bool? isChecked = true;
  @override
  Widget build(BuildContext context){




    return Checkbox(
      activeColor: Colors.red,
      value: isChecked,
      onChanged: (newValue){
setState(() {
  isChecked = newValue ;
});
      },


    );



}
}