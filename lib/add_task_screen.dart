import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget{
  final Function addTaskCallback;
 AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context){


    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(40),

      child:  Column(

        children: [
          Text("New Task" , style: TextStyle(

            fontSize: 30 ,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold
          ),
          ) ,
          TextField(
            autofocus: true,
            onChanged: (newText){


              newTaskTitle = newText;
            },

          ),
       TextButton(onPressed: (){
         addTaskCallback(newTaskTitle);
       }, child: Text("Add"),
         style: TextButton.styleFrom(
           backgroundColor: Colors.blueGrey,
           primary: Colors.white,
         ),
       ),

        ],
      ),

    );

  }}