
import 'package:mysql_client/mysql_client.dart';
import 'package:rcu_assistant/configs/app_connection.dart';

class WorkOrderService {

  static Future<IResultSet> getWorkOrders() async {
    final orders = AppConnection.conn.execute("select o.id_orden, d.nombre, o.fechahora_inicio, o.fechahora_fin  from orden o inner join dependencia d on o.id_dependencia = d.id_dependencia order by o.fechahora_fin");
    return orders;
  }

}