import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyAmazonApp());
}

class MyAmazonApp extends StatelessWidget {
  const MyAmazonApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Amazon",style: TextStyle(
            fontSize: 28
          ),
          ),
        ),
      ),
    );
  }
}