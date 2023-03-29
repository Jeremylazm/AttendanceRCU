import 'package:flutter/material.dart';
import 'package:rcu_assistant/routes/app_routes.dart';
import 'package:rcu_assistant/screens/login.dart';
import 'package:rcu_assistant/screens/user/dashboard_screen.dart';
import 'package:rcu_assistant/screens/user/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RCU Attendance',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.generateRoutes(),
    );
  }
}
