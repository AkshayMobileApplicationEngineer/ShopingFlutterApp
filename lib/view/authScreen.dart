import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth';

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showPassword = false;
  bool keepSignedIn = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UrbanBasket",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Sign in with email and Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to Forgot Password screen
                    },
                    child: const Text("Forgot Password"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                obscureText: !showPassword,
              ),
              CheckboxListTile(
                value: showPassword,
                onChanged: (value) {
                  setState(() {
                    showPassword = value!;
                  });
                },
                title: const Text("Show password"),
              ),
              CheckboxListTile(
                value: keepSignedIn,
                onChanged: (value) {
                  setState(() {
                    keepSignedIn = value!;
                  });
                },
                title: const Text("Keep Sign in"),
              ),
              GestureDetector(
                onTap: () {
                  // Add your sign-in logic here
                  print("Sign In with email: ${emailController.text}");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.amber,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: const Text("Sign In")),
                ),
              ),
              const Divider(thickness: 1),
              Center(child: const Text("New to UrbanBasket Shopping App?")),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  // Navigate to account creation screen
                  print("Create an UrbanBasket Account");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: const Text("Create an UrbanBasket Account")),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {

                },
                child: const Text("Conditions of the Privacy Notes"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
