import 'package:flutter/material.dart';

class Authscreen extends StatelessWidget {
  static const String routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text("Sign in with email and Password",),
          Row(
            children: [
              Text("Sign In"),
              TextButton(onPressed: (){}, child: Text("forget Password"))
            ],
          ),
          TextField(
            textAlign: TextAlign.center,

          ),TextField(
            textAlign: TextAlign.center,

          ),
          CheckboxListTile(value: true, onChanged: (value){

          },
          title:Text("Show password"),),
          CheckboxListTile(value: true, onChanged: (value){

          },title: Text("Keep Sign in "),),
          ElevatedButton(onPressed: (){}, child: Text("Sign in"))


        ],
      )
      ),
    );
  }
}
