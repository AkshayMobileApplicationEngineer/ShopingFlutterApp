import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_store/view/authScreen.dart';

import 'Router/route.dart';

void main() {
  runApp(const MyAmazonCloneApp());
}

class MyAmazonCloneApp extends StatelessWidget {
  const MyAmazonCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Amazon Clone"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Authscreen.routeName);
          },
          child: const Text("Navigate to Auth Screen"),
        ),
      ),
    );
  }
}
