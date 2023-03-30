
import 'package:mysql_client/mysql_client.dart';
import 'package:rcu_assistant/configs/app_connection.dart';

class UserService {

  static Future<IResultSet> getUsers() async {
    final users = AppConnection.conn.execute("select * from usuario");
    return users;
  }
}