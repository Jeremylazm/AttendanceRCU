import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_connection.dart';
import 'package:rcu_assistant/routes/app_routes.dart';
import 'package:rcu_assistant/screens/login.dart';

void main() async {
  await AppConnection.getConnetion();
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
