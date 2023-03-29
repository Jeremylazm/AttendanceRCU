
import 'package:flutter/material.dart';
import 'package:rcu_assistant/widgets/attendances_table/item_table.dart';

class AttendancesTable extends StatelessWidget {
const AttendancesTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          ItemTable(),
        ],
      ),
    );
  }
}