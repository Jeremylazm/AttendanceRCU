
import 'package:mysql1/mysql1.dart';

class AppConnection {
  
  static late MySqlConnection conn;

  static getConnetion() async {
    try{

      var settings = ConnectionSettings(
        host: 'localhost', 
        port: 3306,
        user: 'rcu',
        password: 'unsaac202',
        db: 'rcu_attendance'
      );
      conn = await MySqlConnection.connect(settings);

    } catch(e){
      print("Error: ${e.toString()}");
    }
  }
}
