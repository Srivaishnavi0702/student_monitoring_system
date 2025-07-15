import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
// Later you will import other screens here like:
// '../screens/signup_screen.dart';
// '../screens/student_dashboard.dart';

class AppPathway {
  static final routes = {
    '/login': (context) => LoginScreen(),
    // Add more routes here as you create screens
    // '/signup': (context) => SignupScreen(),
    // '/student-dashboard': (context) => StudentDashboard(),
  };
}
