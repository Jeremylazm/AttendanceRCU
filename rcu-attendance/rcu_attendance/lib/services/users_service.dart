
import 'package:mysql1/mysql1.dart';
import 'package:rcu_assistant/configs/app_connection.dart';

class UserService {
  static Future<Results> getUsers() async {
    var users_result = await AppConnection.conn.query("SELECT * FROM usuario WHERE es_admin=0");
    return users_result;
  }
}