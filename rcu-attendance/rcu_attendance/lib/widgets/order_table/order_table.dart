
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/models/work_order.dart';
import 'package:rcu_assistant/providers/work_order_provider.dart';

class OrderTable extends StatelessWidget {
const OrderTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final workOrderProvider = Provider.of<WorkOrderProvider>(context);

    return FutureBuilder(
      future: workOrderProvider.getTodayOrders(),
      builder: (context, snapshot){
        if(snapshot.hasError){
          print(snapshot.error.toString());
          return Text("Se produjo un error");
        }
        if(!snapshot.hasData){
          return Text("Cargando");
        } else {
          return DataTable(
            columns: [...generateColumns()],
            rows: [
              ...generateRows(snapshot.data!)
            ],
          );
        }
      },
    );
  }

  List<DataColumn> generateColumns(){
    List<String> names = ["Orden", "Dependencia", "Inicio", "Fin", "Acciones", ""];
    List<DataColumn> columns = [];
    for(var name in names){
      DataColumn column = DataColumn(
        label: Text(
          name, 
          style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),
        )
      );
      columns.add(column);
    }
    return columns;
  }

  List<DataRow> generateRows(List<WorkOrder> orders){
    List<DataRow> orderRows = [];
    for(var order in orders){
      DataRow orderRow = DataRow(
        cells: [
          DataCell(Text(order.idOrden,style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
          DataCell(Text(order.dependencia,style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
          DataCell(Text(order.fechaInicio.toString(),style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
          DataCell(Text(order.fechaFin.toString(),style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
          DataCell(
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8.0),
              child: Ink(
                width: double.infinity,
                height: 35.0,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.warningColor,
                ),
                child: Center(
                  child: Text(
                    'Editar',
                    style: poppinsStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          DataCell(
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8.0),
              child: Ink(
                width: double.infinity,
                height: 35.0,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.redColor,
                ),
                child: Center(
                  child: Text(
                    'Eliminar',
                    style: poppinsStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]
      );
      orderRows.add(orderRow);
    }
    return orderRows;
  }

}