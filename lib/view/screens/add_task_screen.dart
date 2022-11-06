import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tasks_app/controller/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  TaskData controller = Get.put(TaskData());

  @override
  Widget build(BuildContext context) {
    // final _firestore = FirebaseFirestore.instance;
    // String? message;
    // DatabaseReference ref = FirebaseDatabase.instance.ref();
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Text(
            "New Task",
            style: TextStyle(
                fontSize: 30,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          TextButton(
            onPressed: () {

                  controller.addTask(newTaskTitle!);

              Navigator.pop(context);


            },
            child: Text("Add"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
