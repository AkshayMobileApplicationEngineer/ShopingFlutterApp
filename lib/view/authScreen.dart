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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 150,
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
                          print("Navigate to Forgot Password");
                        },
                        child: const Text("Forgot Password"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: emailController,
                    label: 'Email',
                    isPassword: false,
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: passwordController,
                    label: 'Password',
                    isPassword: true,
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
                  _buildSignInButton(),
                  const Divider(thickness: 1),
                  Center(child: const Text("New to UrbanBasket Shopping App?")),
                  const SizedBox(height: 10),
                  _buildCreateAccountButton(),
                  const SizedBox(height: 20), // Add space before the footer
                  _buildPrivacyButton(),
                  const SizedBox(height: 20),
                  const Text("MeliveAkshay", textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required bool isPassword,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      textAlign: TextAlign.center,
      keyboardType: isPassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
      obscureText: obscureText,
    );
  }

  Widget _buildSignInButton() {
    return GestureDetector(
      onTap: () {
        // Add your sign-in logic here
        print("Sign In with email: ${emailController.text}");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.amber,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: const Center(child: Text("Sign In")),
      ),
    );
  }

  Widget _buildCreateAccountButton() {
    return InkWell(
      onTap: () {
        // Navigate to account creation screen
        print("Create an UrbanBasket Account");
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: const Center(child: Text("Create an UrbanBasket Account")),
      ),
    );
  }

  Widget _buildPrivacyButton() {
    return TextButton(
      onPressed: () {
        // Navigate to privacy notes or show them
        print("Conditions of the Privacy Notes");
      },
      child: const Text("Conditions of the Privacy Notes"),
    );
  }
}
