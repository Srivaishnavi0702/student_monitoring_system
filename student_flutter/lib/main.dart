import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Newly generated
import 'navigation/app_pathway.dart'; // Your existing route map

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Needed for async main
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(StuApp());
}

class StuApp extends StatelessWidget {
  const StuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Monitoring System',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: AppPathway.routes,
    );
  }
}
