import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';
import '../screens/login_screen.dart';
import '../screens/student_dashboard.dart';
import '../screens/teacher_dashboard.dart';
import '../screens/admin_dashboard.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  final AuthService _authService = AuthService();

  // 👇 Async function to handle role and redirection
  Future<Widget> handleRedirect() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return const LoginScreen();
    }

    // Get user role from backend
    String? role = await _authService.getUserRole(user.uid);

    // Decide where to go based on role
    switch (role) {
      case 'student':
        return const StudentDashboard();
      case 'teacher':
        return const TeacherDashboard();
      case 'admin':
        return const AdminDashboard();
      default:
        return const LoginScreen(); // fallback
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: handleRedirect(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else {
          return snapshot.data ?? const LoginScreen();
        }
      },
    );
  }
}
