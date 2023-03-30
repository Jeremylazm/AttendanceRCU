import 'package:flutter/material.dart';
import 'package:rcu_assistant/widgets/attendances_table/item_table.dart';

class AttendancesTable extends StatelessWidget {
  const AttendancesTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: const Column(
        children: [
          ItemTable(
            name: "Clara del valle",
          ),
          ItemTable(
            name: "Humbert Humbert",
          ),
        ],
      ),
    );
  }
}
