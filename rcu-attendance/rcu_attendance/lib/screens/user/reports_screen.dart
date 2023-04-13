
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/providers/users_provider.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class ReportsScreen extends StatelessWidget {
const ReportsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final isLargeScreen = MediaQuery.of(context).size.width > 800;
    final userProvider = Provider.of<UsersProvider>(context);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTitle(text: "Reportes"),
              isLargeScreen ? const CustomTitle(text: "29/03/2023", fontSize: 18) : Container(),
            ],
          ),
          FutureBuilder(
            future: userProvider.getUsers(),
            builder: (context, snapshot) {
              if(snapshot.hasError){return const Text("Ocurrió un error");}
              if(snapshot.hasData){
                return UsersTable(
                  items: [
                    ...snapshot.data!.map((user) => ItemTable(
                      mini: true,
                      name: user.nombre,
                      button: const ReportsButton(),
                    ))
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}