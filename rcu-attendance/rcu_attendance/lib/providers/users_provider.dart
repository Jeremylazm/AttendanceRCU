import 'package:flutter/material.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:rcu_assistant/models/user.dart';
import 'package:rcu_assistant/services/users_service.dart';

class UsersProvider extends ChangeNotifier {

  final List<User> users = [];


  Future<List<User>> getUsers() async {
    if(users.isNotEmpty) return users;
    IResultSet usersResult = await UserService.getUsers();
    for(var row in usersResult.rows){
      User? user = User.fromIResult(row);
      if(user != null) users.add(user);
    }
    return users;
  }

}
