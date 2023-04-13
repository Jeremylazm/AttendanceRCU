
import 'package:flutter/material.dart';
import 'package:rcu_assistant/routes/menu_item.dart';
import 'package:rcu_assistant/screens/screens.dart';

class AppRoutes {
  static String initialRoute = "login";

  static final List<MenuItem> _menuOptions = [
    MenuItem(route: "login", screen: const LoginScreen()),
    MenuItem(route: "user", screen: const DashboardUserScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> generateRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    for(var item in _menuOptions){
      routes.addAll({
        item.route : (_) => item.screen,
      });
    }
    return routes;
  }
}