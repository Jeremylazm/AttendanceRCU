
import 'package:mysql_client/mysql_client.dart';
import 'package:rcu_assistant/helpers.dart';

class User {

  final String idUsuario;
  final String nombre;
  final String celular;
  final bool esAdmin;

  User({
    required this.idUsuario,
    required this.nombre,
    required this.celular,
    required this.esAdmin,
  });

  static User? fromIResult(ResultSetRow row){
    if(row.colAt(0) == null){
      return null;
    }
    return User(
      idUsuario: row.colAt(0)!,
      nombre: row.colAt(1)!,
      celular: row.colAt(3)!,
      esAdmin: stringToBool(row.colAt(4)!),
    );
  }

}