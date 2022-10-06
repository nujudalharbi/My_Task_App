import 'package:flutter/material.dart';
import 'package:tasks_app/auth_screen.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;
  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {


   final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Column(
      key: _formkey,
      children: <Widget>[
        Form(child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                TextFormField(

               validator: (value) => value!.isEmpty ? 'Enter a valid email ' : null ,
                  decoration: InputDecoration(
                    labelText:"Enter your Emal!" ,


                  ),
                ),
                TextFormField(

              validator: (value) => value!.length < 6 ? 'your password must be large the 6 char ' : null ,
                  decoration: InputDecoration(
                    labelText:"Enter your Password!" ,


                  ),
                  obscureText: true,
                ),
               TextButton(
                  onPressed: () {
        //
        // if(_formkey.currentState!.validate()){
                    Navigator.of(context).pushNamed('todo');
              // }






                    },

                 child:  Text( widget.authType == AuthType.login ? 'Login' : 'Register', style: TextStyle(

                  color: Colors.white , fontSize: 40, backgroundColor: Colors.red ,


                ) ,

                ),



                ),
                SizedBox(height: 60,),
                TextButton(
                  onPressed: () {
                    if (widget.authType == AuthType.login)
                      Navigator.of(context).pushReplacementNamed('register');
                    else
                      Navigator.of(context).pushReplacementNamed('login');

                    }, child:  Text(widget.authType == AuthType.register ?  'have a count ' : "Don't a count  ", style: TextStyle(

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
