import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tasks_app/task_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  // Firebase.initializeApp();
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
