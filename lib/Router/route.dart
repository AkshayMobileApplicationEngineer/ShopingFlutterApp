import 'package:flutter/material.dart';
import 'package:new_store/view/authScreen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Authscreen.routeName:
      return MaterialPageRoute(builder: (_) => Authscreen());
  // Add more routes here as needed
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
