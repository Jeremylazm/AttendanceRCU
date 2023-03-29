
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/widgets/custom_title.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class WorkOrderScreen extends StatelessWidget {
const WorkOrderScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    initializeDateFormatting();
    DateTime now = DateTime.now();
    var dateString = DateFormat('dd/MM/yyyy').format(now);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTitle(text: "Órdenes de trabajo"),
              CustomTitle(text: dateString, fontSize: 18),
            ],
          ),
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Orden',
                    style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Dependencia',
                    style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Inicio',
                    style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Fin',
                    style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(  
                cells: <DataCell>[
                  DataCell(Text('T0001', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('ESCUELA PROFESIONAL DE ECONOMIA', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-03 08:30:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-03 11:10:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('T0002', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('ORGANO DE CONTROL INSTITUCIONAL', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-03 09:10:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-03 12:55:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('T0003', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('ESCALOFON Y PENSIONES', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-04 09:00:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-04 12:00:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('T0004', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('ESCUELA PROFESIONAL DE ADMINISTRACION', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-04 09:20:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                  DataCell(Text('2023-01-04 10:10:00', style: poppinsStyle.copyWith(fontWeight: FontWeight.w500))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}