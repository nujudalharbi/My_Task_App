import 'package:flutter/material.dart';
import 'package:tasks_app/auth_screen.dart';

class AuthForm extends StatelessWidget {
  final AuthType authType;
  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Enter your Emal!" ,


                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Enter your Password!" ,


                  ),
                  obscureText: true,
                ),
               TextButton(
                  onPressed: () {

                    }, child:  Text( authType == AuthType.login ? 'Login' : 'Register', style: TextStyle(

                  color: Colors.white , fontSize: 40, backgroundColor: Colors.red ,


                ) ,

                ),



                ),

                TextButton(
                  onPressed: () {
                    if (authType == AuthType.login)
                      Navigator.of(context).pushReplacementNamed('register');
                    else
                      Navigator.of(context).pushReplacementNamed('login');

                    }, child:  Text(authType == AuthType.register ?  'have a count ' : "Don't a count  ", style: TextStyle(

                  color: Colors.white , fontSize: 40, backgroundColor: Colors.red ,


                ) ,

                ),



                ),
              ],

            ),


          ),

        ),
      ],
    );
  }
}
