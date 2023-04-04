import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/providers/providers.dart';
import 'package:rcu_assistant/widgets/user_table/assistance_button.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class AttendancesScreen extends StatelessWidget {
  const AttendancesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user_provider = Provider.of<UsersProvider>(context);

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
          FutureBuilder(
            future: user_provider.getUsers(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                return UsersTable(
                  items: [
                    ...snapshot.data!.map((user) => ItemTable(
                      name: user.nombre, 
                      button: AssistanceButton(),
                    )).toList()
                  ],
                );
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
