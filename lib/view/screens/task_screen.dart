import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_app/view/screens/add_task_screen.dart';
import 'package:tasks_app/controller/task.dart';

import 'package:provider/provider.dart';

import '../../controller/task_data.dart';

class TaskScreen extends StatelessWidget {
  TaskData controller = Get.put(TaskData());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen()
              ),
            ),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
      backgroundColor: Colors.tealAccent[50],
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 60),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "My Task",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
               child:
                //
                ListView.builder(
                    itemCount: controller.tasks.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text('${controller.tasks[index]}'),
                          leading: Icon(Icons.check_box_outline_blank),
                          trailing: IconButton(
                            onPressed: () {
                             // controller.remove(index);
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
