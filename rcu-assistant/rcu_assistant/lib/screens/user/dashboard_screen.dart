
import 'package:flutter/material.dart';

import 'package:rcu_assistant/widgets/widgets.dart';


class DashboardUserScreen extends StatelessWidget {
  const DashboardUserScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Row(
        children: [
          Sidebar(),
        ],
      ),
    );
  }
}
