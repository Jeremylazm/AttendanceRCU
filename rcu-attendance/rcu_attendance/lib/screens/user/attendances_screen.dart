import 'package:flutter/material.dart';
import 'package:rcu_assistant/widgets/user_table/assistance_button.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class AttendancesScreen extends StatelessWidget {
  const AttendancesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 800;
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
              const CustomTitle(text: "Asistencias"),
              isLargeScreen
                  ? CustomTitle(text: dateString, fontSize: 18)
                  : Container(),
            ],
          ),
          const UsersTable(
            items: [
              ItemTable(name: "Clara del valle", button: AssistanceButton()),
              ItemTable(name: "Clara del valle", button: AssistanceButton()),
              ItemTable(name: "Clara del valle", button: AssistanceButton()),
              ItemTable(name: "Clara del valle", button: AssistanceButton()),
            ],
          ),
        ],
      ),
    );
  }
}
