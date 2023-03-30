
import 'package:flutter/material.dart';
import 'package:rcu_assistant/widgets/user_table/item_table.dart';

class UsersTable extends StatelessWidget {
const UsersTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          ItemTable(name: "Clara del valle",),
          ItemTable(name: "Humbert Humbert",),
        ],
      ),
    );
  }
}