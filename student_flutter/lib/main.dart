import 'package:flutter/material.dart';
import 'navigation/app_pathway.dart'; // 🔗 Connect routing map

void main() {
  runApp(StuApp()); // 🚀 Starts the app
}

class StuApp extends StatelessWidget {
  const StuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Monitoring System',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', // 🏁 Start from Login screen
      routes: AppPathway.routes, // 🗺️ Use route map for navigation
    );
  }
}
