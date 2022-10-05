import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:tasks_app/orginal_button.dart';

class IntroScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            SizedBox(
            height: 60,
    width: double.infinity,
    child: TextButton(
    onPressed: () {

     Navigator.of(context).pushNamed('login');}, child:  Text( 'Get Started', style: TextStyle(

    color: Colors.white , fontSize: 40, backgroundColor: Colors.red ,


    ) ,

    ),



    ),



  ),






            ],
          ),
        ),
      )
    );
  }
}
