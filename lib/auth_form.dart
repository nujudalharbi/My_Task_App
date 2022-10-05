import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key}) : super(key: key);

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

                    Navigator.of(context).pushNamed('login');}, child:  Text( 'Get Started', style: TextStyle(

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
