
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/providers/routes_user_provider.dart';
import 'package:rcu_assistant/providers/users_provider.dart';
import 'package:rcu_assistant/screens/screens.dart';
import 'package:rcu_assistant/screens/user/charts_screen.dart';
import 'package:rcu_assistant/widgets/widgets.dart';

class DashboardUserScreen extends StatelessWidget {
  const DashboardUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>RoutesUserProvider(),),
        ChangeNotifierProvider(create: (_)=>UsersProvider(),),
      ],
      child: Scaffold(
        body: Row(
          children: [
            _UserSidebar(),
            _Content(),
          ],
        ),
      ),
    );
    /*return ChangeNotifierProvider(
      create: (_) => RoutesUserProvider(),
      child: Scaffold(
        body: Row(
          children: [
            _UserSidebar(),
            _Content(),
          ],
        ),
      ),
    );*/
  }
}

class _UserSidebar extends StatelessWidget {
  const _UserSidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final routeUserProvider = Provider.of<RoutesUserProvider>(context);

    return Sidebar(
      items: [
        SizedBox(height: 30,),
        ItemButtonSidebar(
          icon: Icons.fact_check,
          title: "Asistencias",
          index: 0,
          onTap: (){
            routeUserProvider.indexRoute = 0;
          },
        ),
        ItemButtonSidebar(
          icon: Icons.assignment,
          title: "Órdenes de trabajo",
          index: 1,
          onTap: (){
            routeUserProvider.indexRoute = 1;
          },
        ),
        ItemButtonSidebar(
          icon: Icons.analytics_outlined,
          title: "Reportes",
          index: 2,
          onTap: (){
            routeUserProvider.indexRoute = 2;
          },
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {

_Content({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context){

    final routesProvider = Provider.of<RoutesUserProvider>(context);

    List<Widget> screens = [AttendancesScreen(), WorkOrderScreen(), ReportsScreen(), ChartsScreen()];

    return Container(
      child: screens[routesProvider.indexRoute],
    );
  }
}
