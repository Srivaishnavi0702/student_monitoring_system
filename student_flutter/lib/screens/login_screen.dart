import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'Login Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
