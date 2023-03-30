
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/widgets/custom_title.dart';
import 'package:rcu_assistant/widgets/user_table/assistance_button.dart';
import 'package:rcu_assistant/widgets/user_table/item_table.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class AttendancesScreen extends StatelessWidget {
const AttendancesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final is_large_screen = MediaQuery.of(context).size.width > 800;

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTitle(text: "Asistencias"),
              is_large_screen ? CustomTitle(text: "29/03/2023", fontSize: 18) : Container(),
            ],
          ),
          UsersTable(
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


