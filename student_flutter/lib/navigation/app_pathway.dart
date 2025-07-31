import '../screens/splash_screen.dart';
import '../screens/auth/signup_screen.dart';
// Later you will import other screens here like:
// '../screens/signup_screen.dart';
// '../screens/student_dashboard.dart';

class AppPathway {
  static final routes = {
    '/splash': (context) => const SplashScreen(),
    '/signup': (context) => SignupPage(),
    // Add more routes here as you create screens
    // '/signup': (context) => SignupScreen(),
    // '/student-dashboard': (context) => StudentDashboard(),
  };
}
