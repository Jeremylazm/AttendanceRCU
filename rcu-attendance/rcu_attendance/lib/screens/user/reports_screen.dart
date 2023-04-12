
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/providers/users_provider.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class ReportsScreen extends StatelessWidget {
const ReportsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final is_large_screen = MediaQuery.of(context).size.width > 800;
    final user_provider = Provider.of<UsersProvider>(context);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTitle(text: "Reportes"),
              is_large_screen ? CustomTitle(text: "29/03/2023", fontSize: 18) : Container(),
            ],
          ),
          FutureBuilder(
            future: user_provider.getUsers(),
            builder: (context, snapshot) {
              if(snapshot.hasError){return Text("Ocurrió un error");}
              if(snapshot.hasData){
                return UsersTable(
                  items: [
                    ...snapshot.data!.map((user) => ItemTable(
                      mini: true,
                      name: user.nombre,
                      button: ReportsButton(),
                    ))
                  ],
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}