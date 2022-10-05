import 'package:flutter/material.dart';
import 'package:tasks_app/add_task_screen.dart';
import 'package:tasks_app/task.dart';
import 'package:tasks_app/task_list.dart';



class TaskScreen extends StatefulWidget{

  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: "complete project "),
    Task(name: "read two page  "),
    Task(name: "go to mall "),

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        onPressed: (

            )
        {
          showModalBottomSheet( isScrollControlled: true, context: context, builder:
          (context) => SingleChildScrollView(child: Container( padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom)

              , child: AddTaskScreen((newTaskTitle){
                setState(() {

                  tasks.add(Task(name: newTaskTitle));
                });

            }),
          ),
          ),
          );

        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add , color: Colors.red,),
      ),
      backgroundColor: Colors.tealAccent[50],
      body : Container(
        padding: const EdgeInsets.only(top: 60 , left : 30 ,right: 30, bottom: 60),
        child: Column(
          children: [
            Row(

              children: [
                SizedBox(width : 20),
                Text("My Task" , style: TextStyle(color: Colors.blueGrey
                    , fontSize: 50 , fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(


                decoration: BoxDecoration(
                    color: Colors.blueGrey ,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    )
                ),
                child: TaskList(tasks),
              ),
            )
          ],

        ),
      ),
    );

  }
}





