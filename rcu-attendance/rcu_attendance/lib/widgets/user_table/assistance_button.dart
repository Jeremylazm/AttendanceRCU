import 'package:flutter/material.dart';
import 'package:rcu_assistant/widgets/user_table/assistance_dialog.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class AssistanceButton extends StatelessWidget {
  const AssistanceButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context, 
          builder: (context) {
            return AssistanceDialog(name: "José".toUpperCase(),);
          }
        );
      },
      hoverColor: Colors.grey.withOpacity(0.1),
      child: const Icon(
        Icons.check_box_outline_blank,
        size: 35,
        color: Colors.red,
      ),
    );
  }
}
