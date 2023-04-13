
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/providers/routes_user_provider.dart';

class ReportsButton extends StatelessWidget {
const ReportsButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final routesProvider = Provider.of<RoutesUserProvider>(context);
    return InkWell(
      onTap: (){
        print("hola");
        routesProvider.indexRoute = 3;
      },
      hoverColor: Colors.grey.withOpacity(0.1),
      splashColor: Colors.green,
      child: const Icon(
        Icons.list,
        size: 35,
        color: Colors.red,
      ),
    );
  }
}