
import 'package:mysql_client/mysql_client.dart';
import 'package:rcu_assistant/configs/app_connection.dart';

class WorkOrderService {

  static Future<IResultSet> getWorkOrders() async {
    final orders = AppConnection.conn.execute("from orden inner join dependencia on orden.id_dependencia = dependencia.id_dependencia order by orden.fechahora_fin");
    return orders;
  }

}