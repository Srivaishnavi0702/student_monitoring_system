import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 🔲 Set full background to black
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'Login Screen',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            ),
        ),
      ),
    );
  }
}
