import 'package:flutter/material.dart';



class TaskScreen extends StatelessWidget{

  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        onPressed: null,
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
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("read two page"),
                      trailing: Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],

        ),
      ),
    );

  }
}





