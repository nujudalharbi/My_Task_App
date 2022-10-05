import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget{
  const AddTaskScreen({
    Key? key ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
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

          ),
       TextButton(onPressed: (){}, child: Text("Add"),
         style: TextButton.styleFrom(
           backgroundColor: Colors.blueGrey,
           primary: Colors.white,
         ),
       ),

        ],
      ),

    );

  }}