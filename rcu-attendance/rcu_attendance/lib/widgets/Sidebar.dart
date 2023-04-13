
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';

class Sidebar extends StatelessWidget {

  final List<Widget> items;

  const Sidebar({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    
    final widthScreen = MediaQuery.of(context).size.width;
    final isLargeScreen = widthScreen > 800;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.mainBlueColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      margin: const EdgeInsets.all(10),
      height: double.infinity,
      width: isLargeScreen ? 250 : 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 15,),
          Text(isLargeScreen ? "RCU Assistance" : "RCU", style: poppinsStyle.copyWith(fontSize: isLargeScreen ? 20 : 15, color: AppColors.whiteColor, fontWeight: FontWeight.w800),),
          SizedBox(height: isLargeScreen ? 20 : 5,),
          Image.asset("assets/images/logo_rcu_fondo_transparente.png", height: isLargeScreen ? 80 : 60,),
          ...items,
          Expanded(child: Container(),),
          const ExitButton(),
        ],
      ),
    );
  }
}




class ExitButton extends StatelessWidget {

  const ExitButton({super.key,});
    
  @override
  Widget build(BuildContext context) {

    final widthScreen = MediaQuery.of(context).size.width;
    final isLargeScreen = widthScreen > 800;

    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.whiteColor, foregroundColor: AppColors.mainBlueColor, elevation: 0),
          onPressed: (){}, 
          child: SizedBox(
            width: 60,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.exit_to_app, size: 20,),
                isLargeScreen ? Text("Salir", style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}