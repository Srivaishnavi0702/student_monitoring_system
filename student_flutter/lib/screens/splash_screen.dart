import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to login
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // or your theme color
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon or Logo
            Image.asset(
              'assets/logo.png', // Add your logo image in assets folder
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Student Monitoring System',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 10),
            const CircularProgressIndicator(), // Loader
          ],
        ),
      ),
    );
  }
}