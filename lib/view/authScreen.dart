import 'package:flutter/material.dart';

class Authscreen extends StatelessWidget {
  static const String routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auth Screen"),
      ),
      body: Center(
        child: const Text("This is the Auth Screen"),
      ),
    );
  }
}
