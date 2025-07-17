import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // 🔐 LOGIN METHOD
  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCred = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCred.user; // ✅ Return Firebase User
    } on FirebaseAuthException catch (e) {
      print("Login Error: ${e.code} - ${e.message}");
      return null;
    }
  }

  // 👤 GET CURRENT USER
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  // 🔁 LOGOUT
  Future<void> logout() async {
    await _auth.signOut();
  }

  // 🔍 CHECK IF LOGGED IN
  bool isLoggedIn() {
    return _auth.currentUser != null;
  }

  // 📌 GET UID
  String? getUid() {
    return _auth.currentUser?.uid;
  }
   // 🆔 GET USER ROLE from MySQL or backend
  Future<String?> getUserRole(String uid) async {
    try {
      // ⛓️ Here you’ll later call Node.js + MySQL to get role
      // For now just simulate based on hardcoded UID logic
      if (uid == "admin-uid-123") {
        return "admin";
      } else if (uid.startsWith("T")) {
        return "teacher";
      } else {
        return "student";
      }
    } catch (e) {
      print("GetUserRole Error: $e");
      return null;
    }
  }

}
 