
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/providers/providers.dart';

class ItemButtonSidebar extends StatelessWidget {

final IconData icon;
final String title;
final VoidCallback onTap;
final int index;

const ItemButtonSidebar({ Key? key, required this.icon, required this.title, required this.onTap, required this.index }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final routeProvider = Provider.of<RoutesUserProvider>(context);

    final widthScreen = MediaQuery.of(context).size.width;
    final isLargeScreen = widthScreen > 800;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: isLargeScreen ? 200 : 50,
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: routeProvider.indexRoute == index ? AppColors.whiteColor : AppColors.mainBlueColor,
        ),
        child: Row(
          mainAxisAlignment: isLargeScreen ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Tooltip(
              message: "Hola a todos",
              child: Icon(
                icon,
                color: routeProvider.indexRoute == index ? AppColors.mainBlueColor : AppColors.whiteColor
              ),
            ),
            isLargeScreen ? const SizedBox(width: 10,) : Container(),
            isLargeScreen 
              ? Text(title, style: poppinsStyle.copyWith(
                color: routeProvider.indexRoute == index 
                  ? AppColors.mainBlueColor 
                  : AppColors.whiteColor,
                fontWeight: routeProvider.indexRoute == index
                  ? FontWeight.bold
                  : FontWeight.normal,
                ),)
              : Container(),
          ],
        ),
      ),
    );
  }
}