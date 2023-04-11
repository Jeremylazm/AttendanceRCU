
import 'package:flutter/material.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:rcu_assistant/models/work_order.dart';
import 'package:rcu_assistant/services/services.dart';

class WorkOrderProvider extends ChangeNotifier {

  Future<List<WorkOrder>> getTodayOrders() async {
    final List<WorkOrder> orders = [];
    IResultSet ordersResult = await WorkOrderService.getWorkOrders();
    for(var orderRow in ordersResult.rows){
      WorkOrder? order = WorkOrder.fromIResult(orderRow);
      if(order != null) orders.add(order);
    }
    return orders;
  }

}