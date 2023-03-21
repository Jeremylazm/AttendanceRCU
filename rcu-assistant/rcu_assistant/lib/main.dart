import 'package:flutter/material.dart';
import 'package:rcu_assistant/screens/login.dart';
import 'package:rcu_assistant/screens/user/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RCU Assistant',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      initialRoute: "login",
      routes: {
        "login" :  (BuildContext context) => const LoginScreen(),
        "user" :  (BuildContext context) => const DashboardUserScreen(),
      }
    );
  }
}

