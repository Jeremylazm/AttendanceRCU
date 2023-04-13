
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/configs/borders_decoration.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class AssistanceDialog extends StatelessWidget {

  final String name;

const AssistanceDialog({ Key? key , required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return CustomDialog(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: poppinsStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: bordersDecoration,
          ),
        ],
      ),
    );
  }
}