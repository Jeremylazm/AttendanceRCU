
import 'package:mysql_client/mysql_client.dart';

class AppConnection {

  static late MySQLConnectionPool conn;

  static getConnetion() async {
    try {
      conn = MySQLConnectionPool(
        host: '127.0.0.1',
        port: 3306,
        userName: 'rcu',
        password: 'unsaac2023',
        maxConnections: 10,
        databaseName: 'rcu_attendance', // optional,
      );
    } catch(e) {
      print("Error: ${e.toString()}");
    }
    
  }
}
