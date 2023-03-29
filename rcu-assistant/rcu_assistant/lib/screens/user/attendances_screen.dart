
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/widgets/custom_title.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class AttendancesScreen extends StatelessWidget {
const AttendancesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTitle(text: "Asistencias"),
              CustomTitle(text: "29/03/2023", fontSize: 18),
            ],
          ),
          AttendancesTable(),
        ],
      ),
    );
  }
}


