import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/providers/work_order_provider.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class WorkOrderScreen extends StatelessWidget {
  const WorkOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTitle(text: "Órdenes de trabajo"),
              CustomButton(title: "Agregar", onTap: (){},),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ChangeNotifierProvider(
              create: (_) => WorkOrderProvider(),
              child: OrderTable()
            ),
          )
        ],
      ),
    );
  }
}
