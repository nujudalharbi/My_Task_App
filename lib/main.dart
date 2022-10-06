import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasks_app/task_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'auth_screen.dart';
import 'intro.dart';


void main (){

  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: IntroScreen(),
      routes: {
        'login' : (context) => AuthScreen(authType: AuthType.login,
        
        
        ),
        
        'register' : (context) => AuthScreen(authType: AuthType.register)

      },
    );
  }

}
