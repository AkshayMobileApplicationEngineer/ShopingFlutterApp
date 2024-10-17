import 'package:UrbanBasket/utils/appTheme.dart';
import 'package:UrbanBasket/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'Router/route.dart'; // Ensure this import is correct

void main() {
  runApp(const MyAmazonCloneApp());
}

class MyAmazonCloneApp extends StatelessWidget {
  const MyAmazonCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set to false for production
      onGenerateRoute: (settings) => generateRoute(settings),
      home: HomeScreen(),
      theme: AppTheme.lightTheme, // Use the custom theme
    );
  }
}

