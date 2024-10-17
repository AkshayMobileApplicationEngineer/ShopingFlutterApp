import 'package:flutter/material.dart';
import 'authScreen.dart'; // Ensure this import is correct

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UrbanBasket"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AuthScreen.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: const Text("Login Activity"),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add some space below the button
            Expanded(child: Container()), // Take remaining space above the footer
            Container(
              padding: const EdgeInsets.all(16), // Light background for footer
              child: Center( // Center the text in the footer
                child: TextButton(
                  onPressed: () {
                    // Example: Navigate to an About screen or perform an action
                    print("TextButton pressed");
                  },
                  child: const Text(
                    "Create by @MeliveAkshay\nVersion v1.0.0",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
