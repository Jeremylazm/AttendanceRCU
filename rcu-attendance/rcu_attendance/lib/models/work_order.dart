
import 'package:mysql_client/mysql_client.dart';

class WorkOrder {

  String idOrden;
  String dependencia;
  DateTime fechaInicio;
  DateTime fechaFin;

  WorkOrder({
    required this.idOrden,
    required this.dependencia,
    required this.fechaInicio,
    required this.fechaFin,
  });

  static WorkOrder? fromIResult(ResultSetRow row){
    if(row.colAt(0) == null){
      return null;
    }
    return WorkOrder(
      idOrden: row.colAt(0)!,
      dependencia: row.colAt(1)!,
      fechaInicio: DateTime.parse(row.colAt(2)!),
      fechaFin: DateTime.parse(row.colAt(3)!),
    );
  }

}