import 'package:flutter/material.dart';

import 'auth_form.dart';





class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(

              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60,),
                  Text("hello" ,
                    style: TextStyle
                      (color: Colors.white ,
                        fontSize: 20,
                        fontWeight: FontWeight.bold ,
                        letterSpacing: 1.2),

                  ),
// Image.asset()
                AuthForm(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
